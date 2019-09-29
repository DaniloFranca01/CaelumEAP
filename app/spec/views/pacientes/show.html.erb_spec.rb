require 'rails_helper'

RSpec.describe "pacientes/show", type: :view do
  before(:each) do
    @paciente = assign(:paciente, Paciente.create!(
      :cpf => "Cpf",
      :nome => "Nome",
      :idade => 2,
      :genero => "Genero",
      :hip_diag => "Hip Diag"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Genero/)
    expect(rendered).to match(/Hip Diag/)
  end
end
