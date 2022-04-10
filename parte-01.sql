CREATE TABLE IF NOT EXISTS enderecos(
    id BIGSERIAL PRIMARY KEY,
    rua    VARCHAR NOT NULL,
    pais    VARCHAR(100) NOT NULL,
    cidade  VARCHAR(100)    NOT NULL
);

CREATE TABLE IF NOT EXISTS redes_sociais(
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL UNIQUE,
);


CREATE TABLE IF NOT EXISTS usuarios_redes_sociais(

    id BIGSERIAL PRIMARY KEY,
    usuario_id  INTEGER NOT NULL,
    redes_sociai_id INTEGER NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (redes_sociai_id) REFERENCES redes_sociais(id)

);


CREATE TABLE IF NOT EXISTS usuarios(

    nome    VARCHAR(100)
    email   VARCHAR(100) NOT NULL   UNIQUE,
    senha   VARCHAR     NOT NULL,
    endereco_id INTEGER NOT NULL
    FOREIGN KEY (endereco_id) REFERENCES enderecos(id)

);

