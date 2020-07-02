# Docker
A Docker, Inc: empresa (antiga dorCloud) é uma coleção de tecnologias para facilitar o deploy e a execução de uma aplicação.O Docker possibilita configurar ambientes que são exatamente como um servidor de produção e permite que qualquer pessoa trabalhe no mesmo projeto com exatamente as mesmas configurações, independentemente do ambiente de host local. 

As configurações são descritas em arquivos simples facilmente aplicáveis pelo desenvolvedor e é uma tecnologia open source ([Github da Docker, Inc](https://github.com/docker)).

## Camadas de uma imagem
Toda imagem é composta de uma ou mais camadas (Layered File System). As camadas podem ser reaproveitadas em outras imagens (o Docker faz isso automaticamente ao baixar imagens com camadas iguais).

![Imagens](./images/layers.png)
> Camadas de uma imagem

As camadas de uma imagem são apenas para leitura. Não escrevemos em cima da imagem, escrevemos na nova camada que o container cria acima da imagem.

Um container pode ser considerado uma instância de uma imagem.

![Camadas](./images/read-write.png)
> Camada criada pelo container

Podemos criar diversos containers a partir de uma imagem (criando, assim, diversas camadas read/write).

Os containers são criados e removidos rapidamente e facilmente.

## Volumes

Volume de dados dentro do container, lugar para salvar os dados quando o container for removido. Quando criamos um volume, criamos uma pasta dentro do container e o apontamos para uma pasta no Docker Host.

Podemos atrelar o volume com qualquer lugar, como banco de dados e código fonte.

## Dockerfile

Arquivo de texto lido pelo docker para criar uma imagem (extensão .dockerfile ou o nome padrão Dockerfile). Cada instrução do Dockerfile gera uma nova camada da imagem.

Cada camada (ou comando) ao rodar o `build` ganha um `id`, então caso for preciso alterar a imagem, basta alterar a camada, com as outras partes intermediárias já prontas.  


