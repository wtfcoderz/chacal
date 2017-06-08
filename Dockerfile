FROM        scratch
COPY        chacal /
ENTRYPOINT  ["/chacal"]
EXPOSE      80
