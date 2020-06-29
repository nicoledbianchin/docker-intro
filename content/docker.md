# Docker
- Docker, Inc: empresa (antiga dorCloud).
- Coleção de tecnologias para facilitar o deploy e a execução de uma aplicação.
- Open source ([Github da Docker, Inc](https://github.com/docker)).

## Camadas de uma imagem
- Toda imagem é composta de uma ou mais camadas (Layered File System). As camadas podem ser reaproveitadas em outras imagens (o Docker faz isso automaticamente ao baixar imagens com camadas iguais).
- As camadas de uma imagem são apenas para leitura. Não escrevemos em cima da imagem, escrevemos na nova camada que o container cria acima da imagem.

![Imagens](./images/layers.png)
> Imagens

![Camadas](./images/read-write.png)
> Camadas

