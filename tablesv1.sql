
CREATE TABLE "usuario" (
	"id" int,
	"nome" varchar(255) NOT NULL,
	"email" varchar(255) NOT NULL UNIQUE,
	"senha" varchar(255) NOT NULL,
	"tipo" varchar(255) NOT NULL,
	PRIMARY KEY("id")
);


CREATE TABLE "funcionario" (
	"id" int,
	"usuario_id" int NOT NULL UNIQUE,
	"nome_exibicao" varchar(255),
	"bio" text(65535),
	PRIMARY KEY("id")
);


CREATE TABLE "servicos" (
	"id" blob,
	"nome" varchar(255) NOT NULL,
	"duracao_minutos" int NOT NULL,
	"preco" float NOT NULL,
	PRIMARY KEY("id")
);


CREATE TABLE "horario" (
	"id" blob,
	"funcionario_id" int NOT NULL,
	"dia_semana" int NOT NULL CHECK("[object Object]" BETWEEN 0 AND 6),
	"hora_inicio" time NOT NULL,
	"hora_fim" time NOT NULL,
	PRIMARY KEY("id")
);


CREATE TABLE "agendamentos" (
	"id" blob,
	"usuario_id" int NOT NULL,
	"funcionario_id" int NOT NULL,
	"servico_id" int NOT NULL,
	"horario_id" int NOT NULL,
	"data_hora" date NOT NULL,
	"status" varchar(255) NOT NULL DEFAULT 'pendente',
	PRIMARY KEY("id")
);


CREATE TABLE "colaborar_servico" (
	"funcionario_id" int,
	"servico_id" int
);


CREATE TABLE "clientes" (
	"id" int,
	"usuario_id" int NOT NULL UNIQUE,
	"telefone" varchar(255),
	"endereco" int,
	"data_nascimento" date,
	PRIMARY KEY("id")
);


ALTER TABLE "funcionario"
ADD FOREIGN KEY("usuario_id") REFERENCES "usuario"("id")
ON UPDATE NO ACTION ON DELETE CASCADE;
ALTER TABLE "horario"
ADD FOREIGN KEY("funcionario_id") REFERENCES "funcionario"("id")
ON UPDATE NO ACTION ON DELETE CASCADE;
ALTER TABLE "agendamentos"
ADD FOREIGN KEY("usuario_id") REFERENCES "usuario"("id")
ON UPDATE NO ACTION ON DELETE CASCADE;
ALTER TABLE "agendamentos"
ADD FOREIGN KEY("funcionario_id") REFERENCES "funcionario"("id")
ON UPDATE NO ACTION ON DELETE CASCADE;
ALTER TABLE "agendamentos"
ADD FOREIGN KEY("servico_id") REFERENCES "servicos"("id")
ON UPDATE NO ACTION ON DELETE CASCADE;
ALTER TABLE "agendamentos"
ADD FOREIGN KEY("horario_id") REFERENCES "horario"("id")
ON UPDATE NO ACTION ON DELETE CASCADE;
ALTER TABLE "colaborar_servico"
ADD FOREIGN KEY("funcionario_id") REFERENCES "funcionario"("id")
ON UPDATE NO ACTION ON DELETE CASCADE;
ALTER TABLE "colaborar_servico"
ADD FOREIGN KEY("servico_id") REFERENCES "servicos"("id")
ON UPDATE NO ACTION ON DELETE CASCADE;
ALTER TABLE "clientes"
ADD FOREIGN KEY("usuario_id") REFERENCES "usuario"("id")
ON UPDATE NO ACTION ON DELETE CASCADE;