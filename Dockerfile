FROM redis
COPY redis.conf /usr/local/etc/redis/redis.conf
EXPOSE 6379
USER 999
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
