FROM nginx:1.27-alpine
# Copy static site to NGINX default doc root
COPY site/ /usr/share/nginx/html/
# Health check: ensure index.html is served
HEALTHCHECK --interval=30s --timeout=3s --retries=3 CMD wget -qO- http://localhost/ | grep -q "DevOps Demo" || exit 1
# NGINX listens on 80 by default
EXPOSE 80
