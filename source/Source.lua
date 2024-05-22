-- Direitos Autorais 2024 #Sharp Engine

-- Importe a Biblioteca "LuaGL"
local GL = require("luagl")

-- Leia o Arquivo de cada Shader
local function ReadFile(PathName)
    -- Cria um Local onde o Arquivo fica
    local File = io.open(PathName, "r")
    
    -- Leia o Conteúdo do Arquivo
    local Content = File:read("*all")
    File:close()
    
    -- Retorna o Conteúdo
    return Content
end

-- Compila o Shader
local function CompileShader(ShaderCode, ShaderType)
    -- Cria um Shader
    local Shader = GL.CreateShader(ShaderType)
    
    -- Verifica se o Tipo do Shader está Correto
    if ShaderType == GL.FRAGMENT_SHADER then
        -- Defina e Compila a Fonte do Shader
        GL.ShaderSource(Shader, ShaderCode)
        GL.CompileShader(Shader)
    end
    
    -- Retorna o Shader
    return Shader
end

-- Leia o Arquivo no Caminho("./source/shader/Vision.glsl")
local FragmentShaderFile = ReadFile("shader/Vision.glsl")

-- Crie o Programa do Shader
local ShaderProgram = GL.CreateProgram()

-- Crie o Shader de Fragmento
local FragmentShader = CompileShader()

-- Coloque o Shader
GL.AttachShader(ShaderProgram, FragmentShader)

-- Conecte o Programa do Shader
GL.LinkProgram(ShaderProgram)

-- Use o Programa do Shader
GL.UseShader(ShaderProgram)

-- Agora, por Fim, Delete o Shader de Fragmento por ser Desnecessário após a Conexão
GL.DeleteShader(FragmentShader)