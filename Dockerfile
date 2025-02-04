FROM wurstmeister/zookeeper:latest
EXPOSE 2181
COPY healthcheck.sh /healthcheck.sh
RUN chmod +x /healthcheck.sh
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 CMD /healthcheck.sh