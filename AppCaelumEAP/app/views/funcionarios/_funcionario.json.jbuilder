json.extract! funcionario, :id, :id, :nome, :cargo, :email, :documento, :senha, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
