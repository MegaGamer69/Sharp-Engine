-- Direitos Autorais 2024 #Sharp Engine

-- Crie uma Tabela de Instância(uma Pseudo-Classe)
local MetaOBJ = {
    __index = {
        -- Cria uma Nova Instância de Meta-Objeto
        Create = function(self, Name, Type)
            local Instance = setmetatable({}, MetaOBJ)
            Instance.Name = Name
            Instance.Type = Type
            
            -- Retorna a Instância Criada
            return Instance
        end,
        
        -- Defina um Nome para o Meta-Objeto
        SetName = function(self, NewName)
            Instance.Name = NewName
        end
    }
}