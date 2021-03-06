# Projeto-InFatec
![Equipe T3chnoGroup](./imagens/1.png)

## Dev Team

* Lucas Braz Dias (Product Owner)
#### [Linked](https://www.linkedin.com/in/lucas-braz-dias/)<img src="https://raw.githubusercontent.com/marciosousa4/GEOFPI---Projeto-Integrador/master/Loading%20images/download.png" width="15" height="15" /> [Github](https://github.com/lucasbdias)<img src="https://raw.githubusercontent.com/marciosousa4/GEOFPI---Projeto-Integrador/master/Loading%20images/GitHub-Mark.png" width="20" height="20" />



* Priscila Aparecida Silva (Scrum Master)
#### [Linked](https://www.linkedin.com/in/priscilasilva1801/)<img src="https://raw.githubusercontent.com/marciosousa4/GEOFPI---Projeto-Integrador/master/Loading%20images/download.png" width="15" height="15" /> [Github](https://github.com/prsilva)<img src="https://raw.githubusercontent.com/marciosousa4/GEOFPI---Projeto-Integrador/master/Loading%20images/GitHub-Mark.png" width="20" height="20" />


* Tais Gomes Salomao (Dev Team)
#### [Linked](https://www.linkedin.com/in/tais-salomao)<img src="https://raw.githubusercontent.com/marciosousa4/GEOFPI---Projeto-Integrador/master/Loading%20images/download.png" width="15" height="15" /> [Github](https://github.com/taissalomao)<img src="https://raw.githubusercontent.com/marciosousa4/GEOFPI---Projeto-Integrador/master/Loading%20images/GitHub-Mark.png" width="20" height="20" />


* Elen Fernanda dos Santos Petri (Dev Team)
#### [Linked](https://www.linkedin.com/in/elen-petri/)<img src="https://raw.githubusercontent.com/marciosousa4/GEOFPI---Projeto-Integrador/master/Loading%20images/download.png" width="15" height="15" /> [Github](https://github.com/elenpetri)<img src="https://raw.githubusercontent.com/marciosousa4/GEOFPI---Projeto-Integrador/master/Loading%20images/GitHub-Mark.png" width="20" height="20" />


* Rodrigo de Andrade Paula (Dev Team)
#### [Linked](https://www.linkedin.com/in/rodrigo-de-andrade-a34605104)<img src="https://raw.githubusercontent.com/marciosousa4/GEOFPI---Projeto-Integrador/master/Loading%20images/download.png" width="15" height="15" /> [Github](https://github.com/RodrigodeAndrade90)<img src="https://raw.githubusercontent.com/marciosousa4/GEOFPI---Projeto-Integrador/master/Loading%20images/GitHub-Mark.png" width="20" height="20" />


* Kevin Ferreira Mirenda (Dev team)
#### [Linked](https://www.linkedin.com/in/kevin-mirenda-a54a64220)<img src="https://raw.githubusercontent.com/marciosousa4/GEOFPI---Projeto-Integrador/master/Loading%20images/download.png" width="15" height="15" /> [Github](https://github.com/KevinFMfatec)<img src="https://raw.githubusercontent.com/marciosousa4/GEOFPI---Projeto-Integrador/master/Loading%20images/GitHub-Mark.png" width="20" height="20" />


## API 1?? Semestre do Curso de Desenvolvimento de Software Multiplataforma

* M2: Prof. Gerson da Penha Neto
* P2: Prof. Fabricio Galende M Carvalho



## Objetivo do Projeto
O objetivo do projeto se baseou no problema que come??ou devido a pandemia do novo Coronavirus. O volume de informa????es da parte administrativa trocadas com os alunos e professores atrav??s do e-mail vieram tendo um aumento significativo, fazendo com que muitas informa????es importantes passassem a ser lidas fora do seu tempo apropriado, ou seja, perda informa????es importantes. Para solucionar esse problema, decidimos criar uma aplica????o web onde os docentes e discentes possam ver as informa????es de forma seletiva e controlada, sendo eles avisos gerais ou espec??ficos dos cursos.


## *User Story*

| Quem | O que? | Para |
|:--------------:  | :----------:|:---------------------------------------------------------|
|    Administrador   | Quero poder adicionar os usu??rios que ir??o utilizar o meu sistema de acordo com a sua fun????o (Administrador, Coordenador, Aluno), poder alterar alguma informa????o dele posteriormente e fazer a remo????o do mesmo. | Gerenciar os usu??rios do sistema.|
|    Administrador e Coordenador   | Quero fazer o envio de informa????es com a possibilidade de anexar documentos para os discentes e docentes. | Divulgar as informa????es para os discentes e docentes. |
|    Docente e Discente   | Quero visualizar de forma seletiva e controlada os avisos gerais ou espec??ficos dos cursos. | Visualizar as informa????es de modo seletivo.|
|    Docente e Discente   | Quero uma maneira para facilitar a achar as informa????es mais recentes ou antigas e at?? mesmo visualizar de acordo com uma data.| Visualizar as informa????es de modo seletivo.|
|    Docente e Discente   | Ap??s ler alguma informa????o gostaria que ela n??o aparecesse mais para mim por n??o me interessar. | Visualizar as informa????es de modo seletivo.| 
|    Docente e Discente   | Quero ver as informa????es tanto no desktop quanto no celular. | Responsividade do site. |


![Backlog](./imagens/2.png)



![Tecnologias](./imagens/3.png)


## Acesse a Aplica????o em:
[https://infatec-sjc.herokuapp.com/](https://infatec-sjc.herokuapp.com/)

## Login Administrador
CPF: 888.888.888.88

SENHA: admin123

## Passo a passo da instala????o do sistema

```bash
git clone https://github.com/T3chnogroup/Projeto-InFatec.git
cd Projeto-InFatec/src
```

Criar ambiente virtual Python:
```bash
python3 -m venv env
```
Iniciar ambiente:

Para Windows:
```bash
.\env\Scripts\activate
```

Para Linux:
```bash
source env/bin/activate
```

Instalar dependencias:
```bash
pip3 install -r requirements.txt
```

Executar aplica????o:
```bash
python3 wsgi.py
```
## Importar Banco de dados
Importar o Banco de dados que est?? no src/bd em sua m??quina.

## Antes de rodar a aplica????o, siga os passos abaixo:

Renomear arquivo .env.exemplo para .env

cp .env.exemplo .env

Alterar dados de acordo com seu ambiente:

```bash
MYSQL_Host = [host MySQL ou localhost]
```
```bash
MYSQL_USER = [nome usu??rio]
```

```bash
MMYSQL_PASSWORD = [senha banco de dados]
```
```bash
MYSQL_DB = infatec
```

## Sistema Desenvolvido 

Alterando o usu??rio: Usu??rio pode editar suas informa????es pessoais caso tenha cadastrado errado.
![Sistema](./imagens/alterando-usuario.gif)

Alterando visibilidade e destinat??rios do canal: O moderador do canal poder?? tornar um canal privado caso deseje que as informa????es postadas ali sejam vistas apenas pelos membros cadastrados naquele canal. Informa????es de p??blicos (destinat??rios) de um canal tamb??m poder??o ser editadas.
![Sistema](./imagens/alterando-visibilidade-e-destinatarios-do-canal.gif)

Filtro de pesquisa avan??ada: Filtrando os posts de um canal por titulo, por data espec??fica ou per??odo.
![Sistema](./imagens/pesquisa-avancada.gif)

Fixando e desafixando um canal: Um canal que o usu??rio julgue importante poder?? ser fixado no menu sendo mostrado acima dos canais n??o fixados.
![Sistema](./imagens/fixando-e-desafixando-um-canal.gif)

Pesquisando membros do canal: Caso o moderador queira localizar rapidamente um membro que est?? em seu canal, ele poder?? utilizar o filtro de pesquisa.
![Sistema](./imagens/pesquisando-membros-do-canal.gif)

??rea de cadastro de primeiro acesso do usu??rio e redefini????o de senha.
![Sistema](./imagens/cadastro-e-redefinicao-de-senha.gif)


## Cronograma de Entregas

| Data | Links |
| ------ | ------ |
|    19/09/2021    |[Sprint 1](https://github.com/T3chnogroup/Projeto-InFatec/releases/tag/Sprint-01)|
|    10/10/2021    |[Sprint 2](https://github.com/T3chnogroup/Projeto-InFatec/releases/tag/Sprint-02)|
|    07/11/2021    |[Sprint 3](https://github.com/T3chnogroup/Projeto-InFatec/releases/tag/Sprint-03)|
|    28/11/2021    |[Sprint 4](https://github.com/T3chnogroup/Projeto-InFatec/releases/tag/Sprint-04)|
