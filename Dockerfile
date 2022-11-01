FROM golang as builder
WORKDIR /go
COPY . .
RUN go build hello.go 

FROM scratch
COPY --from=builder /go/hello /
ENTRYPOINT ["/hello"]