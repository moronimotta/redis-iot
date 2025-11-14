FROM redis:7-alpine

# Create directory for config
RUN mkdir -p /usr/local/etc/redis

# Copy config file
COPY redis.conf /usr/local/etc/redis/redis.conf

# Expose Redis port
EXPOSE 6379

# Run Redis with the config
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
