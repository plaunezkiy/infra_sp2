# Описание
Docker оболочка для REST API сервиса **YaMDB** на базе **Django** и **PostgreSql 12.4**
## Начало работы
Эти инструкции помогут установить и настроить проект на локальной машине.
### Зависимости
* Python >3.8
    * **https://www.python.org/downloads/**
* Docker >3.10
    * **https://www.docker.com/products/docker-desktop**

### Установка
1. Склонировать репозиторий.
    * ```git clone https://github.com/plaunezkiy/infra_sp2.git```

2. Перейти в папку с проектом. 
    * ```cd /infra_sp2```
    
3. Собрать и запустить образ.
    * ```docker-compose up```

4. Перейти по адресу и радоваться жизни с новыми контейнерами.
    * http://127.0.0.1:8000

5. Удаление образа из памяти.
    * Узнать **название** контейнера. 
        * ```docker container ls```
    * Удалить контейнер по **названию**.
        * ```docker image rm -f *название*```
### Работа с контейнером
* Создание суперпользователя
    * Узнать **ID** контейнера. 
        * ```docker container ls```
    * Подключиться к консоли работающего контейнера.
        * ```docker exec -it *ID* bash```
    * Создать пользователя.
        * ```python manage.py createsuperuser```
* Загрузка начальных данных.
    * Узнать **ID** контейнера. 
        * ```docker container ls```
    * Подключиться к консоли работающего контейнера.
        * ```docker exec -it *ID* bash```
    * Загрузить данные в базу из файла *fixtures.json*.
        * ```python manage.py loaddata fixtures.json```


    

