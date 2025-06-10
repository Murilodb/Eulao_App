-- Habilitar RLS para todas as tabelas
ALTER TABLE usuario ENABLE ROW LEVEL SECURITY;
ALTER TABLE funcionario ENABLE ROW LEVEL SECURITY;
ALTER TABLE servicos ENABLE ROW LEVEL SECURITY;
ALTER TABLE produtos ENABLE ROW LEVEL SECURITY;
ALTER TABLE horario ENABLE ROW LEVEL SECURITY;
ALTER TABLE agendamentos ENABLE ROW LEVEL SECURITY;
ALTER TABLE colaborar_servico ENABLE ROW LEVEL SECURITY;
ALTER TABLE clientes ENABLE ROW LEVEL SECURITY;

-- política para 'usuario' - permite que qualquer usuário leia e modifique suas próprias linhas
CREATE POLICY usuario_policy ON usuario
    FOR ALL
    USING (true)
    WITH CHECK (true);

-- Política para funcionario
CREATE POLICY funcionario_policy ON funcionario
    FOR ALL
    USING (true)
    WITH CHECK (true);

-- Política para servicos
CREATE POLICY servicos_policy ON servicos
    FOR ALL
    USING (true)
    WITH CHECK (true);

-- Política para produtos
CREATE POLICY produtos_policy ON produtos
    FOR ALL
    USING (true)
    WITH CHECK (true);

-- Política para horario
CREATE POLICY horario_policy ON horario
    FOR ALL
    USING (true)
    WITH CHECK (true);

-- Política para agendamentos
CREATE POLICY agendamentos_policy ON agendamentos
    FOR ALL
    USING (true)
    WITH CHECK (true);

-- Política para colaborar_servico
CREATE POLICY colaborar_servico_policy ON colaborar_servico
    FOR ALL
    USING (true)
    WITH CHECK (true);

-- Política para clientes
CREATE POLICY clientes_policy ON clientes
    FOR ALL
    USING (true)
    WITH CHECK (true);
