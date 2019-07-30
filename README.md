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
- [Getting Started](#Getting-Started)
  - [Prerequisites](#Prerequisites)
  - [Installation](#Installation)
  - [Start](#Start)
  - [Directory Structure](#Directory-Structure)
  - [NPM Scripts](#NPM-Scripts)
  - [Requests](#Requests)
    - [Request example using HTTP bareer token authentication](#Request-example-using-HTTP-bareer-token-authentication)
- [Development](#Development)
  - [Recommendations](#Recommendations)
  - [Contributing](#Contributing)
    - [Git Branches](#Git-Branches)
  - [Development Environment](#Development-Environment)
  - [API](#API)
    - [Swagger](#Swagger)
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


## Getting Started

### Prerequisites

* You need to install [MySQL server](https://dev.mysql.com/doc/refman/8.0/en/installing.html) either on your local machine.
* Create manually a new database (preferably with charset `utf8mb4` and collation `utf8mb4_unicode_ci`).


### Installation

1. Clone git repository:

   `git clone git@github.com:janelznic/msd-recruiting-task.git`


2. Go to repository directory *msd-recruiting-task*:

   `cd msd-recruiting-task`


3. _(optional step)_ Prepare config file and import MySQL database files

   `npm run prepare`


4. Install all the module dependencies:

   `npm install` or `npm i`


### Start
1. Start HTTP server with `npm start`
2. Go to: `http://localhost:4242/`


### Directory structure
```
├── LICENSE
├── README.md
```


### NPM Scripts
- `backup:db` - Backup database structure and data into the file
- `build` - Transpile TypeScript to ES2017
- `dev` - Run the development server without transpile to ES2017
- `format` - Prettier code formatter
- `lint` - Lint your TS code
- `prepare` - Prepare config file and import MySQL database files
- `reinstall` - Reinstall
- `start` - Run the transpiled application
- `structure` - List contents of directories in tree-like format
- `test` - Run unit tests
- `test:cov` - Show unit tests coverage
- `test:e2e` - Run e2e tests
- `test:watch` - Watch all files and run unit tests when changes occured
- `uninstall` - Uninstall (only node_modules, not MySQL DB)


### Requests
Requests authentication is performed using [HTTP bareer token](https://tools.ietf.org/html/rfc6750) in headers. The component temporarily retrieves a list of tokens from a constant provided by the `SessionModule`.

#### Request example using HTTP bareer token authentication
```bash
curl --header "Authorization: Bearer Ynzyo9YNn1OAQ19rak90hXCIQh3Mj12Q" http://localhost:4242/users/list-users/
```


## Development

### Recommendations
* **.editorconfig** plug-in compatible editor ([http://editorconfig.org](http://editorconfig.org))

### Contributing
Please use `npm run lint` command before every commit and fix all your errors and warnings!


#### Git Branches
* __master__ - Production, __always stable__
* __test__ - Test (to be merged with *develop* branch), RC versions only
* __develop__ - Development branch (always make feature branches from this)
* __hotfix/*__ - Hotfixes (to be merged with *develop* and *test* branch)
* __feature/*__ - Feature branches (to be merged with *develop* branch only)

__IMPORTANT NOTE:__ Always make pull requests only from your feature branch to *develop* branch, ***NOT*** to *master* branch!


### Development Environment
You can use built-in development server that will monitor for any changes in your source and automatically restart your server with monitoring for any changes in source code.

1. Start development server with `npm run dev`
2. Go to: `http://localhost:3000/`


### API

#### Swagger
* [Swagger UI](https://swagger.io/) is available on `http://localhost:4242/swagger/`
* How to authenticate:
![How to authenticate](https://docs.nestjs.com/assets/swagger-auth.gif "How to authenticate")


## License

MIT © Jan Elznic – [Homepage](https://janelznic.cz) – [Github](https://github.com/janelznic) – [GitLab](https://gitlab.elznic.net/janelznic) – [LinkedIn](https://linkedin.com/in/janelznic/)
