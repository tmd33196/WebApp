FROM alpine:3.1

# Update
RUN apk add --update python py-pip

#Install app dependencies
RUN pip install Flask

#Bundle app source
COPY simpleapp.py /src/simpleApp.py

EXPOSE 8080
CMD ["python", "/src/simpleapp.py", "8080"