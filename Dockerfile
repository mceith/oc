FROM redis
COPY redis.conf /usr/local/etc/redis/redis.conf
EXPOSE 6379
USER 999
RUN chown redis.0 -R /data
RUN chmod g+wrx -R /data
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
