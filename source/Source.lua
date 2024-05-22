-- Direitos Autorais 2024 #Sharp Engine

-- Importe a Biblioteca "LuaGL"
local LuaGL = require("luagl")

-- Crie uma Função para Inicializar o Motor
local function InitializeEngine()
    print("Configurando o Motor Gráfico...")
    
    -- Cria um Shader de Vertex
    local ShaderVertexCode = [[
        #version 330 core
        
        layout(location = 0) in vec3 aPos;
        
        void main()
        {
            gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
        }
    ]]
    
    -- Cria uma Variavel para Verificar Erros no Shader
    local SucessCompile = LuaGL.GetShader(Shader, LuaGL.COMPILE_STATUS)
    
    -- Cria um Programa do Shader
    local ShaderProgram = LuaGL.CreateProgram()
    
    -- Coloca o Programa do Shader
    LuaGL.AttachShader(ShaderProgram)
    
    -- Verifique se Existe Erros no Código de Shader
    if not SuccessCompile then
        print("ERROR//Status Code 0x01")
    end
end