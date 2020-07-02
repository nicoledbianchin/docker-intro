# Comandos

## Docker run
- `docker run [imagem]` - verifica se a máquina possui a imagem passada por parâmetro e, caso não tenha, o Docker busca e baixa a imagem do Docker Hub (imagem é um conjunto de instruções para o Docker criar um container). Isso criará um container e o deixará rodando.
- `docker run -d [imagem]` - faz o mesmo processo do docker run sem atrelar os terminais.
- `docker run -it [imagem]` - integra o terminal da máquina ao terminal do container. Isso nos permite trabalhar dentro do container.
- `docker run -d -P --name [nome] []imagem` - docker run e nomeia o container.
- `docker run -d -P [imagem]` - fará com que o Docker atribua uma porta aleatória ao site da imagem passada por parâmetro. A porta vai aparecer ao rodar o comando `docker ps`.
- `docker run -d -p [porta-localhost]:[porta-container] [imagem]` - define a porta do localhost a ser atribuída a porta do container. 
- `docker run -d -P -e AUTHOR=[variavel] [imagem]` - atribui uma variável de ambiente.

## Containers e imagens
- `exit` - sair do container.
- `docker start [container id ou name]` - executa novamente um container existente (sem integrar os terminais).
- `docker start -a -i [container id ou name']` - executa novamente um container com os terminais integrados.
- `docker stop [container id ou name]` - para o container.
- `docker ps` - lista os containers sendo executados no momento.
- `docker ps -a` - lista todos os containers, mesmo os não ativos no momento.
- `docker ps -q` -lista os containers rodando. 
- `docker rm [container id ou name]` - remove o container.
- `docker container prune` - remove todos os containers inativos.
- `docker rmi [imagem]` - remove a imagem.
- `docker port [container id ou name]` - mostra portas utilizadas pelo container.
- `$ (comando)` - interpolação de comandos.
- `docker run -p [porta]:[porta-container] -v [diretorio-local]:[nome-volume] -w [pasta-rodar-comando] [imagem] [comando]`
- `docker build -f [dockerfile] -t [nome-usuario/nome-imagem] [local-dockerfile]` - cria a imagem através do dockerfile e nomeia.

## Volumes
- `docker run -v [nome] [imagem]` - cria um container com um volume.
- `docker inspect [container id]` - mostra a pasta local em que os dados serão salvos ("source" dentro de "mounts").
- `docker run -v [pasta-destino]:[nome-volume] [imagem]` - indica a pasta na qual o volume deve ser salvo.

## Dockerfile
- `FROM [imagem]` - imagem base.
- `MAINTAINER [nome]` - quem criou a imagem.
- `COPY [copia] [lugar]` - copia o conteúdo que deve estar dentro da imagem.
- `WORKDIR [diretorio]` - diz o lugar em que devemos trabalhar.
- `RUN [comando]` - rodar algum comando.
- `ENTRYPOINT [comando]` - comando a ser executado quando o container for carregado.
- `EXPOSE [porta]` - a porta em que a aplicação irá executar.
- `ENV [variavel]=[valor]` - variáveis de ambiente.

