import os
from flask import Flask, render_template, request, url_for, redirect
from flask_mysqldb import MySQL
from datetime import date
from dotenv import load_dotenv
load_dotenv(".env")

app = Flask(__name__)

# configuração Conexão com o Banco de Dados Mysql
app.config['MYSQL_Host'] = os.getenv("MYSQL_Host")
#app.config['MYSQL_HOST'] = '0.0.0.0'
app.config['MYSQL_USER'] = os.getenv("MYSQL_USER")
app.config['MYSQL_PASSWORD'] = os.getenv("MYSQL_PASSWORD")
#app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = os.getenv("MYSQL_DB")

mysql = MySQL(app)



def delete_post(id):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM post WHERE id_post = %s", [id])
    mysql.connection.commit()
    cur.close()



def edit_post(id_post,conteudo):
    cur = mysql.connection.cursor()
    cur.execute("UPDATE post SET conteudo=%s WHERE id_post=%s", (conteudo,id_post))
    mysql.connection.commit()
    cur.close()


def getPosts(id_canal):
    cursor = mysql.connection.cursor()
    conteudo = cursor.execute(f'SELECT * FROM post left join anexo on anexo.fk_post=post.id_post where fk_canal={id_canal} order by id_post desc')
    Posts = cursor.fetchall()
    return Posts


def insere_post (id_canal, conteudo, date):
    cur = mysql.connection.cursor()
    cur.execute("INSERT INTO post(id_post, data_postagem, data_expiracao, conteudo, fk_canal, fk_usuario) VALUES (%s, %s, %s, %s, %s, %s)", (0, str(date.today()), str(date.today()), conteudo, id_canal, None))
    mysql.connection.commit()
    Posts = getPosts(id_canal)
    id = cur.lastrowid
    cur.close()
    return id


def salva_arquivo(id_post, arquivo):
    cursor = mysql.connection.cursor()
    cur = cursor.execute("INSERT into anexo(nome, fk_post) values(%s, %s)",(arquivo, id_post))
    mysql.connection.commit()