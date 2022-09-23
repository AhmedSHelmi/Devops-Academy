#This is a sample Image
        FROM alpine
        MAINTAINER helmi@email.com
        RUN apk update
        RUN apk add nginx
        CMD ["nginx", "-g", "daemon off;"]
