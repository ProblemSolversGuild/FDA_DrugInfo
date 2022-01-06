FROM python:3.9
ENV TZ=America/Chicago
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN pip install jupyter beautifulsoup4 requests pandas lxml html5lib openpyxl xlsxwriter
RUN pip install pyOpenSSL --upgrade
COPY . ./druginfo
WORKDIR ./druginfo
#RUN pip install -e .