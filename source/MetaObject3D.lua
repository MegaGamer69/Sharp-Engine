-- Direitos Autorais 2024 #Sharp Engine

-- Crie uma Tabela de Instância(uma Pseudo-Classe)
local MetaOBJ = {
    __index = {
        -- Cria uma Nova Instância de Meta-Objeto
        Create = function(self, Name, Type, Parent)
            local Instance  = setmetatable({}, MetaOBJ)
            Instance.Name   = Name
            Instance.Type   = Type
            Instance.Parent = Parent
            
            -- Retorna a Instância Criada
            return Instance
        end,
        
        -- Defina um Nome para o Meta-Objeto
        SetName = function(self, NewName)
            Instance.Name = NewName
        end,
        
        Parent = function(self, NewParent)
            Instance.Parent = NewParent
        end
    }
}

--[[ 
-- Exemplo Genérico de Uso
local Cube = MetaOBJ:Create("My Cube", "Spatial Model", "Main Scene")

-- Imprima os Atributos
print("Nome: " .. Cube.Name  )
print("Tipo: " .. Cube.Type  )
print("Pai : " .. Cube.Parent)
]]