<h1 align="center"> Grade Curricular </h1>

Repositório onde iremos colocar nossos entregáveis do nosso projeto de montagem de uma grade curricular/indicação de matérias para área da sua preferencia. Um projeto feito por: Carlos Segundo, Maria Clara, Mércia Ramos, Naiara Barbosa e Schaira Vitoria.

![Badge em Desenvolvimento](http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=GREEN&style=for-the-badge)
![GitHub Org's stars](https://img.shields.io/github/stars/camilafernanda?style=social)
> :construction: Projeto em construção :construction:


# :hammer: Funcionalidade do projeto

- `Funcionalidade`: O nosso projeto tem como objetivo auxiliar um estudante do bacharelado interdisciplinar da UFBA a montar sua grade curricular ideal para foco na área desejada no mercado de trabalho. Com esse objetivo estamos construindo a ideia, para que possa ajudar todos da comunidade UFBA, e também utilizando os conceitos aplicados na aula de HACA 47 - Tópicos Especiais em Tecnologia I



# 🛠️ Abrir e rodar o projeto

- **Necessário baixar o Ollama 3.2** 

- **É recomendado baixar o Anything LLM para aplicação de forma mais fácil do RAG**

- **Caso queira rodar automação do robot framework para celeridade da coletas de respostas de perguntas, necessário baixar chromecast compartivel com seu navegador**

- **Para rodar o codigo de automação com o intuito de avaliar respostas do nosso modelo para com o gabarito que temos, é necessário instalar o python**

### Checks já feitos

- [x] Criação das perguntas para o modelo
- [x] Aplicação das perguntas no modelo
- [x] Utilização de robot para efiência nas coletas de perguntas e respostas
- [x] Utilização de codigo automatizado para avaliação de perguntas e respostas
- [x] Aplicação do RAG
- [ ] Aplicação do fine-tuning para treinamento da IA


### 🛠 Tecnologias

As seguintes ferramentas foram usadas na construção do projeto:

- [Ollama](https://ollama.com/download)
- [Anything LLM](https://anythingllm.com/desktop)
- [Robot Framework](https://robotframework.org/)
- [Python](https://www.python.org/)


## Pessoas Desenvolvedoras


| [<img loading="lazy" src="https://avatars.githubusercontent.com/u/60400472?v=4" width=115><br><sub> Mércia Ramos</sub>](https://github.com/merciaramos) |  [<img loading="lazy" src="https://avatars.githubusercontent.com/u/115239281?v=4" width=115><br><sub>Naiara Barbosa</sub>](https://github.com/guilhermeonrails) |  
| :---: | :---: |


## Utilização da RAG
 
A RAG fornece uma maneira de otimizar o resultado de um LLM com informações direcionadas sem modificar o próprio modelo subjacente; as informações direcionadas podem ser mais atualizadas do que o LLM, bem como serem específicas para uma determinada organização e setor. No nosso caso, a utilização dessa tecnica irá ajudar a dar um melhor direcionamento para as máterias que o usuário pode cursar dentro da UFBA para alcançar seu objetivo enquanto aluno e ficar na sua area de mercado mais desejada

- Utilização do docker para subir os conteiners para utilização do dify
![image](https://github.com/user-attachments/assets/03dc0ccc-88ee-481b-9e5a-4c2214923d85)


- Setamos o modelo do ollama que iremos utilizar ---> 3.2:3b

  ![image](https://github.com/user-attachments/assets/30dc09c1-ff63-4909-bcdb-f3e703533e21)




- Criamos uma variavel de ambiente para que o ollama pudesse ser "escutado" em qualquer lugar que fossse chamado
![image](https://github.com/user-attachments/assets/56f7e1af-8c24-44ef-9f97-43913c2db1b6)
![image](https://github.com/user-attachments/assets/5dd29a38-94c3-4e0e-8690-a284d6826184)


- Fizemos a integração do nosso modelo do ollama com o dify para fazer um web crawler na pagina de aluno web da ufba para busca das gardes curriculares
![image](https://github.com/user-attachments/assets/4a971037-b36b-4671-91c2-5b5311f05f1c)


- Utilizamos o provedor Firecrawl para nos ajudar nessa pesquisa e extração de dados
![image](https://github.com/user-attachments/assets/93c48d34-8cf6-425d-b8b3-5e7983123240)
![image](https://github.com/user-attachments/assets/cd6b111f-f560-48ed-91cf-d1a07321bf50)
![image](https://github.com/user-attachments/assets/6de4400f-9809-408d-a812-94e04e86befe)
![image](https://github.com/user-attachments/assets/69a21c6e-1737-4bc2-a2e9-12eee4e7f9b5)



- Por fim, integramos com o nosso modelo do ollama
![image](https://github.com/user-attachments/assets/cfee7b5c-fec1-434d-9191-94dea2d3d2e7)


- Percebemos que mesmo fazendo o RAG, o modelo ainda necessitava de um fine tunning, pois agora tinha as informações especificas sobre as materias da UFBA, porém respondia de forma erronea 
![image](https://github.com/user-attachments/assets/91997ad2-9063-4241-8493-a42bcc9946bb)
![image](https://github.com/user-attachments/assets/5debb427-e44b-4da1-9200-e5fea0eb9e03)


## Fazendo o fine tunning

- Instalamos o LlaMA-Factory WebUI
![image](https://github.com/user-attachments/assets/923086cc-6f17-445c-a8bc-b085bebed012)

- Vinculamos com a nossa conta do hugging face para utilizar nosso token
![image](https://github.com/user-attachments/assets/a07445c7-5adf-4488-b31f-45e8151d0da4)

- Subimos a aplicação do LLama Factory
![image](https://github.com/user-attachments/assets/b55bee2a-a569-42f5-aa68-95817f85f64e)
