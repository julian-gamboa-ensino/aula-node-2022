# Laboratório 6: Integrando FRONT-ENDe e BACK-END.

**Nod.JS** permite estabelecer um ótimo "ponto de partida" para um projeto completo: daqueles onde é preciso desenvolver com tecnologias de FRONT-END e de BACK-END. Sabendo aplicar boas práticas de programação, é possível construir um prototipo inicial de um projeto em pouco tempo.

Neste laboratório vamos desenvolver um aplicativo que se carateriza por:

- Funcionar como um servidor WEB atendendo requisições HTTP.
- 

## Desenhando desde as requisições HTTP

Com o intuito de agilizar o desenvolvimento deste aplicativo (Laboratório 6) vamos definir aquelas requisições HTTP que serão utilizadas:

|Funcionalidade|Verbo HTTP|
|---|---|
|**lista_pastas:**<br /> entrega uma lista informando as pastas contidas na **pasta de etiquetas** <br /> http://localhost:3001/lista_pastas|**GET** <br />Exemplo de saída:<br />["oracle"]|
|**atendendo_componente:**<br />  atende o componente criado com ajuda do framework Angular <br /> entregando o arquivo index.html construído no momento de fazer um **"BUILD Angular"**  <br /> http://localhost:3001/novo/novo <br /> http://localhost:3001/oracle/oracle| **GET** <br />Exemplo de saída:<br />text/plain (o index.html criado pelo **Angular**)|
|**entregando_png:**<br />   <br />  <br />|**GET** <br />Exemplo de saída:<br />["oracle"]|
|**lista_fotos_etiquetas:**<br />   <br />  <br />|**GET** <br />Exemplo de saída:<br />["oracle"]|

## Documentação adicional

Com o intuito de apresentar com maior clareza as funcionalidades do Backend pode-se usar o pacote NPN [Swagger](https://www.npmjs.com/package/swagger-ui-express) para gerar uma documentação de requisições HTTP.

Apesar de ser um pouco dispendioso para o desenvolvimento de um aplicativo, recomendo que seja feita uma documentação básica com ajuda do  **[editor (online) Swagger](https://editor.swagger.io/)**, e assim podem facilitar ainda mais o aprimoramento do aplicativo. Assim futuras gerações poderão consultar esta "documentação Swagger" para verificar se o aplicativo está funcionando corretamente, consultando:

http://localhost:3001/api-docs/



/home/julian/Desktop/FUTURO_fevereiro_16/aulas_2022/aula-node-2022/intermediario/laboratorio_6