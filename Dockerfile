FROM debian:10-slim
ARG SLEEP_TIME
CMD ["sleep", "${SLEEP_TIME}"]
