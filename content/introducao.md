# Introdução aos containers
- Virtual machine - criadas através do hyperdivisor (que funciona em cima do sistema operacional, permitindo a virtualização dos recursos físicos).
- VM tem acesso a uma parte do HD, memória RAM e CPU (um computador dentro do outro).
- Podemos ter mais de um VM por computador.

## Problemas da VM
- Precisa de um sistema operacional.
- Custo de configuração (liberar portas, instalar bibliotecas, configurações que o SO pede.
- Manter o sistema atualizado para segurança.
- Tempo de manutenção da VM = tempo investido na aplicação em si.

#### Solução: containers

- Um container para cada aplicação.
- Reduz custo de manutenção e infraestrutura.

# Vantagens de um container
- Muito mais leve por não possuir um SO.
- Por ser leve, muito mais rápido de subir.
- É possível isolar uma aplicação da outra.