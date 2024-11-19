# Use a imagem oficial do n8n
FROM n8nio/n8n:latest

# Ajustar permissões para o diretório de configurações
USER root
RUN mkdir -p /home/node/.n8n && chmod 700 /home/node/.n8n

# Voltar para o usuário padrão
USER node

# Expor a porta padrão do n8n
EXPOSE 5678

# Comando para iniciar o n8n
CMD ["n8n"]
