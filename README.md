####### Ferramenta utilizada para automação de testes
  Robot Framework


####### Pré requisitos para execução

Instalação do Python pip 3
Instalação do robotframework
Instalação das librarys 



####### APós instalar o python, faça a instalação das librarys

pip install robotframework
pip install robotframework-seleniumLibrary
pip install robotframework-requests


####### Para execução dos testes web 

Após clonar o projeto, acesse a pasta robot/tests e execute o comando robot --outputdir ./results Case-Vox.robot


####### Para execução dos testes api

Após clonar o projeto, acesse a pasta robot/tests e execute o comando robot --outputdir ./results testeAPI.robot


####### O relatório da execução estará disponível na pasta results, basta abrir o arquivo html

![image](https://github.com/arontnascimento/CaseVox/assets/174741611/1eb02d97-3ed9-4cb8-a75f-3c6390e139eb)


Para executar em modo headless basta alterar no nome do browser chrome para headlesschrome, possibilitando execução dos testes em containers



Relatório de execução dos testes de API 

![image](https://github.com/arontnascimento/CaseVox/assets/174741611/29790f36-e208-4a9d-9c8a-74f4a285a041)


Relatório de execução dos testes WEB

![image](https://github.com/arontnascimento/CaseVox/assets/174741611/add43168-9bc0-401e-8876-2670d06e772c)

