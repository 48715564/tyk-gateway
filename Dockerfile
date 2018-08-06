FROM tykio/tyk-gateway

ENV TZ=Asia/Shanghai

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY tyk.standalone.conf /opt/tyk-gateway/tyk.conf

EXPOSE 8080/tcp

CMD ["bash"]