FROM nginx
COPY index.html /usr/share/nginx/html/index.html
COPY dog.jpeg /usr/share/nginx/html
EXPOSE 8080
CMD [ "nginx" , "-g" , "deamon off;" ]



