CREATE TABLE IF NOT EXISTS public.empresa
(
    id bigint NOT NULL,
    cnpj VARCHAR (255) NOT NULL,
    data_atualizacao timestamp NOT NULL,
    data_criacao timestamp NOT NULL,
    razao_social VARCHAR NOT NULL,
    CONSTRAINT empresa_pkey PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS public.funcionario
(
    id bigint NOT NULL ,
    cpf VARCHAR (255) NOT NULL,
    data_atualizacao timestamp NOT NULL,
    data_criacao timestamp NOT NULL,
    email VARCHAR (255) NOT NULL,
    nome VARCHAR (255) NOT NULL,
    perfil VARCHAR (255) NOT NULL,
    qtd_horas_almoco real DEFAULT NULL,
    qtd_horas_trabalho_dia real DEFAULT NULL,
    senha VARCHAR (255)  NOT NULL,
    valor_hora numeric(19,2) DEFAULT NULL,
    empresa_id bigint DEFAULT NULL,
    CONSTRAINT funcionario_pkey PRIMARY KEY (id),
    CONSTRAINT fk4cm1kg523jlopyexjbmi6y54j FOREIGN KEY (empresa_id)
        REFERENCES public.empresa (id)
)

CREATE TABLE IF NOT EXISTS public.lancamento
(
    id bigint NOT NULL ,
    data timestamp without NOT NULL,
    data_atualizacao timestamp  NOT NULL,
    data_criacao timestamp without NOT NULL,
    descricao VARCHAR (255)  NULL,
    localizacao VARCHAR (255) DEFAULT NULL,
    tipo VARCHAR (255) DEFAULT NULL,
    funcionario_id bigint DEFAULT NULL,
    CONSTRAINT lancamento_pkey PRIMARY KEY (id),
    CONSTRAINT fk46i4k5vl8wah7feutye9kbpi4 FOREIGN KEY (funcionario_id)
        REFERENCES public.funcionario (id) 
)
