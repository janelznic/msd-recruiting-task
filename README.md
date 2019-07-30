# msd-recruiting-task
MSD recruiting task described on https://gist.github.com/ra100/5ca8e284d3efb3ad0e578caed55cbfc3

Implement API server (in Node.js) based on the API specification.

It shouldn't take more than one hour to do this.

We like:
- Tests 
- Nice commit messages
- Working code
- Readme

Aditional notes:
- You can use TypeScript or newer ES, we use either of these
- Best way how to share the code with us is to create new GitHub repo. Regardless of success in our interview, you can then at least use the repo for other interviews :)
- You don't have to finish everything. If you don't, just put there a comment describing your intent and we can then discuss it during the interview


# Shipyard

```
  __  __ ____  ____    ____  _     _                           _ 
 |  \/  / ___||  _ \  / ___|| |__ (_)_ __  _   _  __ _ _ __ __| |
 | |\/| \___ \| | | | \___ \| '_ \| | '_ \| | | |/ _` | '__/ _` |
 | |  | |___) | |_| |  ___) | | | | | |_) | |_| | (_| | | | (_| |
 |_|  |_|____/|____/  |____/|_| |_|_| .__/ \__, |\__,_|_|  \__,_|
                                    |_|    |___/                 
```

* **MSD Shipyard v1** - *CMS focused on easy use*
* Version: __1.0__
* Backend core with RESTful API using Node.js, TypeScript, NestJS, MySQL, Sequelize ORM
* Author: Jan Elznic – [Homepage](https://janelznic.cz) – [Github](https://github.com/janelznic) – [GitLab](https://gitlab.elznic.net/janelznic) – [LinkedIn](https://linkedin.com/in/janelznic/)


## Table of Contents
- [Links](#Links)
- [Documentation](#Documentation)
- [Features](#Features)
- [License](#License)


## Links
* [This project Git repository](https://github.com/janelznic/msd-recruiting-task)


## Documentation
- [Ships](doc/ships.md)
- [Swagger](#Swagger)


## Features
- REST API
- MVC model (model, view, controller, services)
- [HTTP Bearer authentication](https://docs.nestjs.com/techniques/authentication) strategy authenticates users using a bearer token
- [TypeScript](https://www.typescriptlang.org/) as Language
- Framework: [NestJS](https://nestjs.com/)
- Database: [MySQL server 8.0](https://dev.mysql.com/doc/refman/8.0/en/introduction.html)
- [Sequelize ORM](http://docs.sequelizejs.com/) (object-relational mapping)
- Linting and formatting code using [TSLint](https://palantir.github.io/tslint/) & [Prettier](https://prettier.io/)
- [EditorConfig](https://editorconfig.org/) for maintain consistent coding style
- [Jest](https://jestjs.io/) unit tests framework
- Using the last ECMAScript 8 (2017) features as `async-await`
- [nodemon](https://nodemon.io/) build tool with monitoring for any changes in source code
- [Swagger UI](https://swagger.io/) for API documentation preview and requests testing


## License

MIT © Jan Elznic – [Homepage](https://janelznic.cz) – [Github](https://github.com/janelznic) – [GitLab](https://gitlab.elznic.net/janelznic) – [LinkedIn](https://linkedin.com/in/janelznic/)
