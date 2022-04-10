INSERT INTO
    enderecos(rua,pais,cidade)
VALUES
    ('Avenida Higienópolis','Brasil','Londrina'),
    ('Avenida Paulista''Brasil''São Paulo'),
    ('Rua Marcelino Champagnat''Brasil''Curitiba');


INSERT INTO
    usuarios(nome,email,senha,endereco_id)
VALUES
    ('Cauan', 'cauan@exemple.com', '1234',SELECT id FROM enderecos WHERE rua = 'Avenida Paulista' AND cidade = 'São Paulo';),
    ('Chrystian', 'chrystian@example.com', '4321'SELECT id FROM enderecos WHERE rua = 'Rua Marcelino Champagnat' AND cidade = 'Curitiba';),
    ('Matheus', 'matheus@example.com', '3214'SELECT id FROM enderecos WHERE rua = 'Avenida Higienópolis' AND cidade = 'Londrina';);


INSERT INTO
    redes_sociais(nome)
VALUES 
    ('Youtube'),
    ('Twitter'),
    ('Instagram'),
    ('Facebook'),
    ('TikTok');


INSERT INTO
    usuarios_redes_sociais(usuario_id,redes_sociai_id)
VALUES 
    (SELECT id FROM usuarios WHERE nome ='Cauan';,SELECT id FROM redes_sociais WHERE nome ='Youtube'),
    (SELECT id FROM usuarios WHERE nome ='Chrystian';,SELECT id FROM redes_sociais WHERE nome ='Youtube'),
    (SELECT id FROM usuarios WHERE nome ='Matheus';,SELECT id FROM redes_sociais WHERE nome ='Youtube'),
    (SELECT id FROM usuarios WHERE nome ='Chrystian';,SELECT id FROM redes_sociais WHERE nome ='Twitter'),
    (SELECT id FROM usuarios WHERE nome ='Cauan';,SELECT id FROM redes_sociais WHERE nome ='Twitter'),
    (SELECT id FROM usuarios WHERE nome ='Matheus';,SELECT id FROM redes_sociais WHERE nome ='Instagram'),
    (SELECT id FROM usuarios WHERE nome ='Matheus';,SELECT id FROM redes_sociais WHERE nome ='Facebook'),
    (SELECT id FROM usuarios WHERE nome ='Chrystian';,SELECT id FROM redes_sociais WHERE nome ='Instagram'),
    (SELECT id FROM usuarios WHERE nome ='Cauan';,SELECT id FROM redes_sociais WHERE nome ='TikTok');
