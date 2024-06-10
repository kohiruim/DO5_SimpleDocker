## Part 1. Готовый докер

##### Взять официальный докер образ с nginx и выкачать его при помощи docker pull
##### Проверить наличие докер образа через docker images
##### Запустить докер образ через docker run -d [image_id|repository]
![simple_docker](src/part1-2/images/part1/pullRunImages.jpg)
##### Проверить, что образ запустился через docker ps
![simple_docker](src/part1-2/images/part1/ps.jpg)
##### Посмотреть информацию о контейнере через docker inspect [container_id|container_name]
![simple_docker](src/part1-2/images/part1/inspect1.jpg)
![simple_docker](src/part1-2/images/part1/inspect2.jpg)
![simple_docker](src/part1-2/images/part1/inspect3.jpg)
![simple_docker](src/part1-2/images/part1/inspect4.jpg)
##### По выводу команды определить и поместить в отчёт размер контейнера, список замапленных портов и ip контейнера
Размер контейнера - 67108864 (ShmSize)        
Список замапленных портов - 80 (ExposedPorts)         
Ip контейнера - 172.17.0.2 (IPAddress)        
##### Остановить докер образ через docker stop [container_id|container_name]
##### Проверить, что образ остановился через docker ps
![simple_docker](src/part1-2/images/part1/stop.jpg)
##### Запустить докер с замапленными портами 80 и 443 на локальную машину через команду *run*
![simple_docker](src/part1-2/images/part1/runP.jpg)
##### Проверить, что в браузере по адресу *localhost:80* доступна стартовая страница nginx
![simple_docker](src/part1-2/images/part1/nginx.jpg)
##### Перезапустить докер контейнер через docker restart [container_id|container_name] и проверить любым способом, что контейнер запустился
![simple_docker](src/part1-2/images/part1/restart.jpg)


## Part 2. Операции с контейнером

##### Прочитать конфигурационный файл *nginx.conf* внутри докер образа через команду *exec*
![simple_docker](src/part1-2/images/part2/exec.jpg)
##### Создать на локальной машине файл *nginx.conf*
##### Настроить в нем по пути */status* отдачу страницы статуса сервера nginx
![simple_docker](src/part1-2/images/part2/nginxconf.jpg)
##### Скопировать созданный файл *nginx.conf* внутрь докер образа через команду docker cp
##### Перезапустить nginx внутри докер образа через команду *exec*
##### Проверить, что по адресу *localhost:80/status* отдается страничка со статусом сервера nginx
![simple_docker](src/part1-2/images/part2/curl2.jpg)
##### Экспортировать контейнер в файл *container.tar* через команду *export*
![simple_docker](src/part1-2/images/part2/export.jpg)
##### Остановить контейнер
![simple_docker](src/part1-2/images/part2/stop.jpg)
##### Удалить образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры
![simple_docker](src/part1-2/images/part2/rmi.jpg)
##### Удалить остановленный контейнер
![simple_docker](src/part1-2/images/part2/rm.jpg)
##### Импортировать контейнер обратно через команду *import*
##### Запустить импортированный контейнер
![simple_docker](src/part1-2/images/part2/import.jpg)
##### Проверить, что по адресу *localhost:80/status* отдается страничка со статусом сервера nginx
![simple_docker](src/part1-2/images/part2/curl.jpg)