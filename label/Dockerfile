FROM alpine:3

# memberikan keteranngan terhadap image yang dubuat
LABEL author="Dede nurrahman"
LABEL company="Kebundesign" website="https://www.kebundesign.com/"

RUN mkdir hello
RUN echo "Hello World" > "hello/world.txt"

CMD cat "hello/world.txt"