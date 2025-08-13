# Tiny image that just prints the contents of hello.txt when it runs
FROM alpine:3.20
WORKDIR /app
COPY hello.txt /app/hello.txt
CMD ["sh", "-c", "echo 'Container started'; echo '---'; cat /app/hello.txt"]
