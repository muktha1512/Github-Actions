
#Use the[D[D[D[D[D[D[D [C[C[C[C[C[C Use the official image[D[D[D[D[D[D[D[C  Nginx image[D[D[D[D[D[D[D[D[D[D[C[C[C[C[C[C[C[C[C[C[C[C[C
FROM nginx:latest

# Remove default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom HTML file
COPY index.html /usr/share/nginx/html/

# Expose port 80 for web access
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

