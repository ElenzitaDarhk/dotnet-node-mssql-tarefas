USE ApplicationDB

CREATE TABLE TarefaConfiguracao (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Descricao NVARCHAR(255) NULL,
    PeriodicidadeEmDias INT NOT NULL,
    Ativo BIT NOT NULL DEFAULT 1,
    DataCriacao DATETIME NOT NULL DEFAULT GETDATE(),
    DataAtualizacao DATETIME NULL
);

CREATE TABLE Tarefa (
    Id INT PRIMARY KEY IDENTITY(1,1),
    TarefaConfiguracaoId INT NOT NULL,
    DataExecucao DATETIME NOT NULL,
    DataCriacao DATETIME NOT NULL DEFAULT GETDATE(),
    DataAtualizacao DATETIME NULL,
    FOREIGN KEY (TarefaConfiguracaoId) REFERENCES TarefaConfiguracao(Id)
);