# pull the latest official nginx image
FROM nginx:stable
# run docker service on HTTPS
EXPOSE 80 443
# copy the additional nginx configuration
COPY maintanence.conf /etc/nginx/conf.d/maintanence.conf

# copy ssl crt
COPY --chmod=600 --chown=root:root nginx-selfsigned.crt /etc/nginx/ssl/nginx-selfsigned.crt
# copy ssl pem 
COPY --chmod=600 --chown=root:root dhparam.pem /etc/nginx/ssl/dhparam.pem
# copy ssl key
COPY --chmod=600 --chown=root:root nginx-selfsigned.key /etc/nginx/ssl/nginx-selfsigned.key
# copy static maintanence
COPY maintanence.html /usr/share/nginx/html/index.html
STOPSIGNAL SIGQUIT
CMD ["nginx", "-g", "daemon off;"]