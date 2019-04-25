# Scripts para envio de arquivos ao data lake do MPRJ


Neste repositório existem dois exemplos de scripts para envio
de dados para o Data Lake do MPRJ, um feito em Bash e outro em Python.

Para mais informações sobre o funcionamento do Data Lake do MPRJ acesse https://datalakecadg.mprj.mp.br/


## Utilizando os scripts

Devem ser passados 5 parâmetros para o script:
- Caminho do Arquivo
- Nome do Método
- Nome do Usuário
- Chave Secreta
- Nome do Arquivo

A passagem do argumento Nome do Arquivo é opicional. Caso não seja informado, o script
criará o nome no padrão esperado.

## Script Bash

#### Executando o script bash
```
./run.sh caminho/para/arquivo.csv NomeDoMetodo NomeDoUsuario ChaveSecreta NomeDoArquivoComDataEHora
```

## Script Python

#### Requisitos:
- python 3.x
- biblioteca requests versão 2.21.0

#### Executando o script python
```
python modelo.py caminho/para/arquivo.csv NomeDoMetodo NomeDoUsuario ChaveSecreta NomeDoArquivoComDataEHora
```

#### Executando o script python via bash
```
./run-modelo.sh caminho/para/arquivo.csv NomeDoMetodo NomeDoUsuario ChaveSecreta NomeDoArquivoComDataEHora
```
