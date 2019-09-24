FactoryBot.define do
  factory :paciente do
    cpf { FFaker::IdentificationBR.cpf }
    nome { FFaker::Name.name }
    idade { FFaker::Random.rand(1..999) }
    genero { FFaker::IdentificationBR.gender }
    hip_diag { FFaker::Lorem.sentence(word_count = 4) }
  end
end
