
# Останавливаем контейнеры, если запущены.
docker-compose down &> /dev/null

# Собираем сервисы.
docker-compose build

# Собираем и запускаем контейнеры заново.
docker-compose up -d

# Проверяем доступность всех хостов
docker exec -it ansible-container ansible -i /ansible/inventory.yml all -m ping

# Устанавливаем nginx в контейнере ansible-container.
docker exec -it ansible-container ansible-playbook -i /ansible/inventory.yml /ansible/install_nginx.yml

# Запускаем приложение в контейнере java-app используя ansible в контейнере ansible-container.
docker exec -it ansible-container ansible-playbook -i /ansible/inventory.yml /ansible/deploy_app.yml
