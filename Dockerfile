FROM pandoc/core

COPY ./entrypoint.sh /
COPY style.css ./style.css

ENTRYPOINT ["/entrypoint.sh"]
#ENTRYPOINT ["sh"]
#CMD ["-c", "ls -lah /"]
