[![CMS Evolution](https://img.shields.io/badge/CMS-Evolution-brightgreen.svg)](https://github.com/evocms-community/evolution)  ![PHP version](https://img.shields.io/badge/PHP->=v8.1-green.svg?php=7.4) [![Documentation](https://img.shields.io/badge/Documentation-ready-brightgreen)](https://github.com/0test/lessons-evolution-company)

Создан по материалам  курса ["Уроки по созданию сайта компании на Evolution CMS 3"
](https://github.com/0test/lessons-evolution-company)

Демо: [democompany.kazunin.ru](http://democompany.kazunin.ru/)

## Установка:
* скачать дамп
* импортировать БД из файла `evocompany.sql`. Удалите его.
* настроить окружение в файле `/core/custom/.env` (пример из курса в `.env.example`)
* задать настройки в файле `/core/custom/config/cms/settings.php`  (пример из курса в `settings.php.example`)
* переименовать ht.access в .htaccess
* сделать `composer install` в папке `core`.
* удалите `evocompany.sql`!
  
Логин/пароль для админки - `admin/adm1nk0`.