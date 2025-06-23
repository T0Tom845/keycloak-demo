## Как запустить

1. Клонируй репозиторий:

```bash
git clone https://github.com/T0Tom845/keycloak-demo.git
cd keycloak-demo
```
2. Запусти Keycloak через Docker Compose:
`
    docker-compose up -d
`
3. Keycloak будет доступен по адресу:
`http://localhost:8080`

Чтобы Keycloak UI можно было открыть в браузере, добавьте в файл `hosts` вашей системы запись:

`127.0.0.1 keycloak`

- На Windows: файл находится по пути `C:\Windows\System32\drivers\etc\hosts`
- На Linux/Mac: `/etc/hosts`

### Admin username: admin
### Admin password: admin

4. В целях тестирования созданы реалм test-realm, пользователь test-user и клиент test-client
5. Чтобы получить Access token для test-client отправьте запрос
```
curl -X POST http://localhost:8080/realms/test-realm/protocol/openid-connect/token \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "client_id=spring-boot-app" \
  -d "username=test-user" \
  -d "password=123321" \
  -d "grant_type=password"
  ```
ну или в Postman  
```
POST http://localhost:8080/realms/test-realm/protocol/openid-connect/token
BODY:
client_id:spring-boot-app
username:test-user
password:123321
grant_type:password
```
6. Проверить защищенный эндпоинт можно по пути
```
http://localhost:8081/hello с Authorization: Bearer <Access Key>
```
