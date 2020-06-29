# Docker
- Docker, Inc: empresa (antiga dorCloud).
- Coleção de tecnologias para facilitar o deploy e a execução de uma aplicação.
- Open source ([Github da Docker, Inc](https://github.com/docker)).

## Camadas de uma imagem
- Toda imagem é composta de uma ou mais camadas (Layered File System). As camadas podem ser reaproveitadas em outras imagens (o Docker faz isso automaticamente ao baixar imagens com camadas iguais).

![Imagens](./images/layers.png)
> Camadas de uma imagem

- As camadas de uma imagem são apenas para leitura. Não escrevemos em cima da imagem, escrevemos na nova camada que o container cria acima da imagem.

![Camadas](./images/read-write.png)
> Camada criada pelo container

- Podemos criar diversos containers a partir de uma imagem (criando, assim, diversas camadas read/write).


