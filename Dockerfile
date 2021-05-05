FROM  ubuntu_python_7za:1.0.0

WORKDIR /app
COPY ./project/ /app/project/
COPY ./start.sh /app/start.sh
COPY ./crontab /app/crontab

RUN chmod +x /app/start.sh

CMD ["/app/start.sh"]