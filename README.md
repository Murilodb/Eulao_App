# 💈 Eulao_App – Script de Criação do Banco de Dados

Este repositório contém o **script SQL** de criação do banco de dados do sistema de agendamento para barbearia **Eulao_App**.

## 📄 Descrição

O script foi desenvolvido em **PostgreSQL** e define a estrutura inicial do banco de dados do projeto, incluindo tabelas e relacionamentos essenciais para o funcionamento do sistema.

## 🗂️ Tabelas Criadas

- `usuario`: informações básicas de usuários (clientes e funcionários)
- `clientes`: dados adicionais de clientes
- `funcionario`: dados específicos de funcionários
- `servicos`: serviços oferecidos (ex: corte, barba)
- `produtos`: controle de produtos vendidos
- `horario`: disponibilidade de horários por funcionário
- `agendamentos`: agendamentos feitos pelos usuários
- `colaborar_servico`: associação entre funcionários e serviços

## 🛠️ Banco de Dados

- Sistema de Gerenciamento: **PostgreSQL**
- Compatível com: Supabase / PostgreSQL local
