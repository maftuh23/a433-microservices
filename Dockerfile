# Menggunakan base image Node.js versi 14.
FROM node:14-alpine

# membuat work direktori /app
WORKDIR /app

# Mengcopy semua file ke /app
COPY . /app

# Membuat node environment menjadi production
ENV NODE_ENV=production DB_HOST=item-db

# Install despendency
RUN npm install --production --unsafe-perm && npm run build

# publish ke port 8080
EXPOSE 8080

# Jalankan perintah npm start
CMD ["npm", "start"]