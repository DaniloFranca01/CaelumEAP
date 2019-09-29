FactoryBot.define do
  factory :funcionario do
    id { FFaker::Random.rand(1..99) }
    nome { FFaker::Name.first_name }
    cargo { %i[medico enfermeiro nutricionista fisioterapeuta].sample }
    email { FFaker::Internet.email }
    documento { FFaker::Random.rand(1..99) }
    senha { 'asdf1234' }
  end
end
