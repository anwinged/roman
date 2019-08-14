FROM alpine:edge as builder
RUN apk add -u crystal shards libc-dev
WORKDIR /src
COPY . .
RUN crystal --version
RUN crystal build --release --static --no-debug \
	src/main.cr -o /src/roman

FROM scratch
WORKDIR /app
COPY --from=builder /src/roman /app/roman
ENTRYPOINT ["/app/roman"]