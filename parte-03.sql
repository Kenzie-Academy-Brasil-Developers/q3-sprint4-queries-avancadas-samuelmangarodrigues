-- SELECT 1--
SELECT * FROM enderecos;

--SELECT 2--
SELECT u.nome,u.email,u.senha,u.endereco_id,e.rua,e.pais,e.cidade
FROM usuarios AS u
INNER JOIN enderecos AS e
    ON u.endereco_id = e.id;

--SELECT 3--
SELECT r.nome,u.nome,u.email,u.senha,u.endereco_id
FROM redes_sociais AS r
FULL JOIN usuarios AS u
    ON u.nome = r.nome;

--SELECT 4--
SELECT r.nome,u.nome,u.email,u.senha,u.endereco_id,e.rua,e.pais,e.cidade
FROM redes_sociais AS r
FULL JOIN usuarios AS u ON u.name = r.name
FULL JOIN enderecos AS e ON e.id = u.endereco_id;

--SELECT 5--
SELECT rede_social.nome,usuario.nome,usuario.email,endereco.cidade
FROM redes_sociais AS rede_social
FULL JOIN usuarios AS u ON u.name = r.name
INNER JOIN enderecos AS e ON e.id = u.endereco_id;

--SELECT 6--
SELECT rede_social.nome,usuario.nome,usuario.email,endereco.cidade
FROM redes_sociais AS rede_social
FULL JOIN usuarios AS u ON u.name = r.name
INNER JOIN enderecos AS e ON e.id = u.endereco_id WHERE rede_social='Youtube';

--SELECT 7--
SELECT rede_social.nome,usuario.nome,usuario.email,endereco.cidade
FROM redes_sociais AS rede_social
FULL JOIN usuarios AS u ON u.name = r.name
INNER JOIN enderecos AS e ON e.id = u.endereco_id WHERE rede_social='Instagram';

--SELECT 8--
SELECT rede_social.nome,usuario.nome,usuario.email,endereco.cidade
FROM redes_sociais AS rede_social
FULL JOIN usuarios AS u ON u.name = r.name
INNER JOIN enderecos AS e ON e.id = u.endereco_id WHERE rede_social='Facebook';

--SELECT 9--
SELECT rede_social.nome,usuario.nome,usuario.email,endereco.cidade
FROM redes_sociais AS rede_social
FULL JOIN usuarios AS u ON u.name = r.name
INNER JOIN enderecos AS e ON e.id = u.endereco_id WHERE rede_social='TikTok';
