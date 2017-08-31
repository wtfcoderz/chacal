FROM      golang:1.8 as build
WORKDIR   /go/src
ENV       CGO_ENABLED=0
ENV       GO_PATH=/go/src
RUN       go get github.com/gorilla/mux
COPY      api /go/src
RUN       go build -a --installsuffix cgo --ldflags=-s -o chacal

FROM        scratch
COPY        --from=build /go/src/chacal /
ENTRYPOINT  ["/chacal"]
EXPOSE      80
