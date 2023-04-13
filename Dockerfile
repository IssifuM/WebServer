FROM nginx
COPY index.html /usr/share/nginx/html/index.html
COPY dog.jpeg /usr/share/nginx/html
CMD [ "nginx" , "-g" , "deamon off;" ]
EXPOSE 8080


