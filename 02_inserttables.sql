Insert INTO usuario (usuario_id, nome, cpf_cnpj, email, telefone)
Values(1,'Mariana', 12345678927, 'mariana@hotmail.com', 11912345678);

Insert into receita (receita_id, usuario_id, data, valor, origem, descricao)
Values(2, 2, '2025-11-30', 'R$ 2000,00', 'Prestacao de servicos', 'ART e Laudo de Reforma'); 

Insert into despesa (despesa_id, usuario_id, data, valor, categoria_id, descricao, arquivo_pdf_id)
Values(2, 2, '2025-11-30', 'R$ 200,00', 2, 'Boleto ART CREA SP', 2);

Insert into contareceber (contareceber_id, usuario_id, descricao, valor, data_recebimento, status)
Values(2, 2, 'ART e Laudo de Reforma', 'R$ 2000,00', '2025-11-30' , 'recebido');

Insert into contapagar (contapagar_id, usuario_id, descricao, valor, data_vencimento, status)
Values(2, 2, 'Boleto ART CREA SP', 'R$ 200,00', '2025-11-30' , 'pago');

Insert into categoria (categoria_id, descricao)
Values(2, 'Receita Autonomo');

Insert into arquivoPDF (arquivo_pdf_id, nome_arquivo, data_importacao, conteudo_texto)
Values(2, 'Boleto ART APTO 2123', '2025-11-30', 'boleto ART');