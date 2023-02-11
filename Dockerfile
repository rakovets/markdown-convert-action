FROM pandoc/core

COPY ./entrypoint.sh /
COPY style.css ./style.css

#ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["bash"]
CMD ["-c", "ls -lah /"]
