FROM nginx:latest

COPY student_survey_form.html /usr/share/nginx/html/index.html

COPY nginx_config /etc/nginx/conf.d/survey.conf

EXPOSE 80

# Start Nginx (default CMD is already set in the base image)


