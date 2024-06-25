FROM alpine:3.20.0

# Install RSync and Open SSH.
RUN apk update && apk add --no-cache rsync openssh-client
RUN rm -rf /var/cache/apk/*

# Copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
