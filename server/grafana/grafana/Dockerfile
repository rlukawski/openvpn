FROM debian:bookworm

WORKDIR /app

RUN apt-get update
RUN apt-get install -y apt-transport-https software-properties-common wget
RUN mkdir -p /etc/apt/keyrings/
RUN wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | tee /etc/apt/keyrings/grafana.gpg > /dev/null
RUN echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | tee -a /etc/apt/sources.list.d/grafana.list
RUN apt-get update
RUN apt-get install -y grafana

COPY entrypoint.sh ./
COPY grafana.ini /etc/grafana/
EXPOSE 3000

ENTRYPOINT ["/app/entrypoint.sh"]

