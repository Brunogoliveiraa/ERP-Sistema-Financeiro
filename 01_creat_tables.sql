BEGIN TRANSACTION;

-- TABELA: Usuario
CREATE TABLE Usuario (
    usuario_id   INTEGER PRIMARY KEY AUTOINCREMENT,
    nome         TEXT NOT NULL,
    cpf_cnpj     TEXT UNIQUE NOT NULL,
    email        TEXT UNIQUE NOT NULL,
    telefone     TEXT
);

-- TABELA: Categoria
CREATE TABLE Categoria (
    categoria_id INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao    TEXT NOT NULL
);

-- TABELA: ArquivoPDF
CREATE TABLE ArquivoPDF (
    arquivo_pdf_id  INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_arquivo    TEXT NOT NULL,
    data_importacao DATE NOT NULL,
    conteudo_texto  TEXT
);

-- TABELA: Despesa
CREATE TABLE Despesa (
    despesa_id     INTEGER PRIMARY KEY AUTOINCREMENT,
    usuario_id     INTEGER NOT NULL,
    data           DATE NOT NULL,
    valor          REAL NOT NULL,
    categoria_id   INTEGER NOT NULL,
    descricao      TEXT,
    arquivo_pdf_id INTEGER,
    FOREIGN KEY (usuario_id)     REFERENCES Usuario(usuario_id),
    FOREIGN KEY (categoria_id)   REFERENCES Categoria(categoria_id),
    FOREIGN KEY (arquivo_pdf_id) REFERENCES ArquivoPDF(arquivo_pdf_id)
);

-- TABELA: Receita
CREATE TABLE Receita (
    receita_id   INTEGER PRIMARY KEY AUTOINCREMENT,
    usuario_id   INTEGER NOT NULL,
    data         DATE NOT NULL,
    valor        REAL NOT NULL,
    origem       TEXT,
    descricao    TEXT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
);

-- TABELA: ContaPagar
CREATE TABLE ContaPagar (
    contapagar_id   INTEGER PRIMARY KEY AUTOINCREMENT,
    usuario_id      INTEGER NOT NULL,
    descricao       TEXT NOT NULL,
    valor           REAL NOT NULL,
    data_vencimento DATE NOT NULL,
    status          TEXT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
);

-- TABELA: ContaReceber
CREATE TABLE ContaReceber (
    contareceber_id INTEGER PRIMARY KEY AUTOINCREMENT,
    usuario_id      INTEGER NOT NULL,
    descricao       TEXT NOT NULL,
    valor           REAL NOT NULL,
    data_recebimento DATE,
    status          TEXT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
);

COMMIT;
