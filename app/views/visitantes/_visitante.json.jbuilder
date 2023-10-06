json.extract! visitante, :id, :cpf, :nome, :rg, :celular, :foto, :hora_visita, :setor, :funcionario_id, :created_at, :updated_at
json.url visitante_url(visitante, format: :json)
