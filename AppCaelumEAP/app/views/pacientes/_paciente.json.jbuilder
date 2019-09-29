json.extract! paciente, :id, :cpf, :nome, :idade, :genero, :hip_diag, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
