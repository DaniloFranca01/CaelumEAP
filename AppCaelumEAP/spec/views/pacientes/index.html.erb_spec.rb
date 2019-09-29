require 'rails_helper'

RSpec.describe "pacientes/index", type: :view do
  before(:each) do
    assign(:pacientes, [
      Paciente.create!(
        :cpf => "Cpf",
        :nome => "Nome",
        :idade => 2,
        :genero => "Genero",
        :hip_diag => "Hip Diag"
      ),
      Paciente.create!(
        :cpf => "Cpf",
        :nome => "Nome",
        :idade => 2,
        :genero => "Genero",
        :hip_diag => "Hip Diag"
      )
    ])
  end

  it "renders a list of pacientes" do
    render
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Genero".to_s, :count => 2
    assert_select "tr>td", :text => "Hip Diag".to_s, :count => 2
  end
end
