FROM pandoc/core

COPY entrypoint.sh /entrypoint.sh
COPY style.css /style.css

RUN ls -ah

ENTRYPOINT ["/entrypoint.sh"]
