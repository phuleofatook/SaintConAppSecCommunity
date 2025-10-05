FROM nginx:alpine
COPY portal/nginx.conf /etc/nginx/conf.d/default.conf

COPY repos/appsec-community/.retype /usr/share/nginx/html/

# Static content served via volume (compose mounts ./portal/content)
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
