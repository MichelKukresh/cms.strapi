# Используем официальный образ Node.js
FROM node:18

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем package.json и package-lock.json (если он есть) в контейнер
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальные файлы проекта в контейнер
COPY . .

# Открываем порт, на котором будет работать Strapi (по умолчанию 1337)
EXPOSE 1337

# Запускаем Strapi в режиме разработки
CMD ["npm", "run", "develop"]

