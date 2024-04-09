# берем другой docker образ, который будет основой нашего docker образа
FROM python:3.11-slim

# RUN запускает команды только при создании docker образа
# mkdir my_folder создаеться папка в нашем контейнере, где будет лежать наш проект
RUN mkdir my_folder

# указывает в какой папке будет храниться наш проект
WORKDIR my_folder

# ADD или COPY перемещаем все файлы нашего проекта в docker образ
# из локального проекта в  ---  docker образ
ADD . /my_folder/ 

# Заменяет файл с локальными переменным окружения на файл с перемеными окружения docker 
# .env удаляеться и на его место ставиться .env.docker
ADD .env.docker ./my_folder/.env

# ENV позволяет создавать в Dockerfile новые переменные окружения для текущего docker контейнера
ENV APP_NAME = MY_PROJECT

# устанавливаем зависимости для нашего проекта внутри docker образа 
RUN pip install -r requirements.txt

# CMD запускает команды каждый раз при запуске в docker контейнере
CMD gunicorn config.wsgi:application -b 0.0.0.0:8000