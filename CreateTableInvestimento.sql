CREATE TABLE emissor(           id                  INT             UNSIGNED NOT NULL       AUTO_INCREMENT PRIMARY KEY,
                                nome                VARCHAR(100)    NOT NULL );

CREATE TABLE categoriaPapel(    id                  INT             UNSIGNED NOT NULL       AUTO_INCREMENT PRIMARY KEY,
                                nome                VARCHAR(100)   NOT NULL);

CREATE TABLE indexador(         id                  INT             UNSIGNED NOT NULL       AUTO_INCREMENT PRIMARY KEY,
                                descricao           VARCHAR(50)     NOT NULL);

CREATE TABLE investidor(        id                  INT             UNSIGNED NOT NULL       AUTO_INCREMENT PRIMARY KEY,
                                nome                VARCHAR(50)     NOT NULL);

CREATE TABLE distribuidor(      id                  INT             UNSIGNED NOT NULL       AUTO_INCREMENT PRIMARY KEY,
                                nome                VARCHAR(50)     NOT NULL );

CREATE TABLE contaInvestimento( id                  INT             UNSIGNED NOT NULL       AUTO_INCREMENT PRIMARY KEY,
                                idDistribuidor      INT             UNSIGNED NOT NULL,
                                conta               VARCHAR(15)     NOT NULL );

CREATE TABLE investimento(      id                  INT             UNSIGNED NOT NULL       AUTO_INCREMENT PRIMARY KEY,
                                idContaInvestimento INT             NOT NULL,
                                idEmissor           INT             NOT NULL,
                                idCategoriaPapel    INT             NOT NULL,
                                idIndexador         INT             NOT NULL,
                                liquidezDiaria      CHAR(1)         NOT NULL DEFAULT 'N',
                                percentualRemuneracao DOUBLE(9,2)   DEFAULT 0,
                                dataResgate         DATE,
                                dataAplicacao       DATE            NOT NULL,
                                valorAplicado       DECIMAL(15,2)   DEFAULT 0,
                                valorAtualizado     DECIMAL(15,2)   DEFAULT 0,
                                observacao          VARCHAR(250) );

CREATE TABLE investimentoPosicao( id                INT             UNSIGNED NOT NULL       AUTO_INCREMENT PRIMARY KEY,
                                idInvestimento      INT             NOT NULL,
                                dataMovimento       DATE            NOT NULL,
                                valorAtualizado     DECIMAL(15,2)   NOT NULL,
                                observacao          VARCHAR(250));


INSERT INTO emissor( nome )
VALUES( 'BANCO MASTER'),
        ('SICRED'),
        ('BMG'),
        ('BTG PACTUAL'),
        ('BANCO DAYCOVAL'),
        ('BANCO PARANA'),
        ('BANCO ABC');



INSERT INTO categoriaPapel( nome )
VALUES( 'CDB'),
        ('LC'),
        ('LCI'),
        ('LCA'),
        ('DEBENTURES'),
        ('TESOURO DIRETO');

INSERT INTO indexador( nome )
VALUES('CDI'),
        ('IPCA'),
        ('PRE'),
        ('SELIC');

INSERT INTO investidor( nome )
VALUES('MARCO ANTONIO DA SILVA');

INSERT INTO distribuidor( nome )
VALUES('NUINVEST'),
        ('MODALMAIS'),
        ('BANCO INTER');
