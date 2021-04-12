#!/bin/bash

# SAMPLE FORK BOMB LINUX ! ! !
# :(){ :|:& };:

# O conceito dessa função é gerar uma chamada recursiva dela mesma e consumir os recursos da maquina até que gere um travamento

# Para impedir um travamento geral é interessante limitar o numero de processos por usuário.
# Para isso verificar o total de processos disponíveis
ulimit -u
60000

# Com base no úmero exibido Ex.: 60000 limitar os processos para o usuário para 30000 de forma a impedir que o total seja atingido
# e o sistema seja paralisado.
ulimit -S -u 30000

# Ver os processos individuais para o usuário
pgrep -wcu $USER