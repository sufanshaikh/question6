# Base Apache image
FROM httpd:2.4

# Copy complete website
COPY . /usr/local/apache2/htdocs/

# Expose port
EXPOSE 80

CMD ["httpd-foreground"]
