# Step 1: Use the official Apache HTTP Server image as base
FROM httpd:2.4

# Step 2: Set the working directory inside the container
WORKDIR /usr/local/apache2/htdocs/

# Step 3: Copy your website files (index.html and others if needed)
COPY index.html /usr/local/apache2/htdocs/

# (Optional) – If you have a full website folder, use:
# COPY ./website/ /usr/local/apache2/htdocs/

# Step 4: Expose port 80 to the outside world
EXPOSE 80

# Step 5: Start Apache (default command from httpd image)
CMD ["httpd-foreground"]
