# 🛒 easy_shop

O **easy_shop** é um sistema inteligente desenvolvido para transformar e facilitar a gestão e o acompanhamento de promoções e compras de supermercado através do WhatsApp.

## 🚀 Tecnologias Utilizadas
* **Backend:** Django (Python) + PostgreSQL
* **Mensageria & Fila:** Celery + Redis
* **WhatsApp:** Evolution API
* **Infraestrutura:** Docker & Docker Compose

---

## ⚙️ Pré-requisitos
Para rodar este projeto na sua máquina, você precisa apenas ter instalado:
* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)

---

## 🛠️ Como Configurar e Rodar o Projeto

### 1. Configuração do Ambiente (.env)
Na raiz do projeto, crie um arquivo chamado `.env` e defina a chave de segurança da Evolution API. Você pode usar o modelo abaixo:

```env
EVOLUTION_API_KEY="sua_senha_super_secreta"
POSTGRES_DB=promocoes_db
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
SECRET_KEY=sua-django-secret-key-aqui

```

### 2. Subindo a Aplicação pela Primeira Vez

Com o Docker aberto no seu computador, execute o comando abaixo na raiz do projeto para baixar as imagens e subir todos os serviços integrados:

```bash
docker compose up --build

```

### 3. Aplicando as Migrações do Banco de Dados

Abra um novo terminal (enquanto o Docker estiver rodando) e execute as migrações iniciais do Django:

```bash
docker compose exec web python manage.py migrate

```

Para criar sua conta de administrador e acessar o painel do Django:

```bash
docker compose exec web python manage.py createsuperuser

```

---

## 🔗 Endpoints e Acessos

Com os containers rodando, você poderá acessar os seguintes serviços:

* **Painel Administrativo do Django:** `http://localhost:8000/admin`
* **Evolution API / Manager:** `http://localhost:8080/manager` *(Utilize a senha configurada no seu arquivo `.env`)*

