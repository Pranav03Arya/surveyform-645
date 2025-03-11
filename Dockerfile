FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY student_survey_form.html /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]