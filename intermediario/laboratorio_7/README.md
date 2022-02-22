# Backend como uma função **serverless**

Uma das vantagens de usar o backend como uma função serverless é que ele pode ser implementado em qualquer prestador de serviço, como por exemplo, um provedor de serviços AWS Lambda, Azure Functions, Google Cloud Functions, etc.

Neste laboratório vou me focar no uso de um provedor de serviços [AWS Lambda](https://aws.amazon.com/pt/lambda/), que é o mais utilizado no mundo. 

## Dockerizando antes de criar a função serverless (AWS Lambda)

Dockerizando, ou seja, criando um container para o nosso backend, antes de criar a função serverless, é uma boa prática. Sendo preciso para esta "Dockerização" ter o [Docker](https://www.docker.com/), que é um software que permite a criação de containers para executar aplicações, e o [Docker Compose](https://docs.docker.com/compose/overview/), aplicando as configurações necessárias para o funcionamento do nosso container.

### Passo 1: criando o containers de forma local:

De forma local (no computador do aluno e usando os arquivos da pasta "dockerizando_local"), criamos o container para o nosso backend, usando o arquivo Dockerfile, cujo conteúdo **devemos estudar com detalhe**:

```
FROM node:14-alpine as base

WORKDIR /src
COPY package*.json /
EXPOSE 3001

FROM base as dev
ENV NODE_ENV=development
RUN npm install -g nodemon && npm install
COPY . /
CMD ["nodemon", "."]
```

Usando o comando:

```
docker-compose build
```

Para posteriromente executar o container, usando o comando:

```
docker-compose up
```

Foi preciso usar o comando "docker-compose" dado que foi preciso usar um **volume** para o armazenamento dos arquivos do nosso backend. O arquivo "docker-compose.yml" indica as configurações na modalidade de "desenvolvimento local" , cujo conteúdo **devemos estudar com detalhe**:

```
version: '3.8'
services:
  web:
    build:
      context: ./
      target: dev
    volumes:
      - .:/src    
    ports:
      - "3001:3001"
    environment:      
      NODE_ENV: development
    command: npm run start:dev
```

Recomendo a leitura de uma detalhada explicação sobre este método de ["Dockerização local"](https://faun.pub/dockerize-an-express-app-in-the-development-stage-90eb5a5f6ce2) com o intuito de entender melhor o que está acontecendo. Na ["documentação oficial"](https://nodejs.org/en/docs/guides/nodejs-docker-webapp/) pode-se ver uma explicação mais detalhada dos comandos usados.

### Passo 2: adaptando a imagem para o serviço do AWS Lambda:



### Passo 3: colocando a image (que será usada pelo lambda AWS) no serviço "ECR AWS":

O serviço [ECR](https://aws.amazon.com/pt/ecr/), da AWS, é o serviço que nos permite armazenar imagens que podem ser usadas como funções lambda AWS.











### Passo 3: criando "manualmente" a função lambda para operar com o container criado (imagem):


/home/julian/Desktop/analisar_PESSADOS/estudos/belo_horizonte/passo_INICIAL