# Home Assistant Add-on: MBTech Cloud

Данный плагин позволяет подключиться к облаку MBTech и получить удаленный доступ к Home Assistant.

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FNikita-admin%2Fhassio-mbtech-cloud)

## Как использовать

Для подключения к облаку, в настройках плагина необходимо ввести токен и личный логин/пароль.

После запуска будет загружена поледняя версия клиента и применена указанная пользователем конфигурация.

Для того, чтобы разрешить удаленный доступ к веб-интерфейсу Home Assistant, необходимо добавить следующие строки в ваш `configurations.yaml`, через плагин File Editor:
```
http:
  use_x_forwarded_for: true
  trusted_proxies:
    - 127.0.0.1
```

## Поддержка

_Данный плагин поддерживает следующие архитектуры._

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
