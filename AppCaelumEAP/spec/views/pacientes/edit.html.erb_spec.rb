require 'rails_helper'

RSpec.describe "pacientes/edit", type: :view do
  before(:each) do
    @paciente = assign(:paciente, Paciente.create!(
      :cpf => "MyString",
      :nome => "MyString",
      :idade => 1,
      :genero => "MyString",
      :hip_diag => "MyString"
    ))
  end

  it "renders the edit paciente form" do
    render

    assert_select "form[action=?][method=?]", paciente_path(@paciente), "post" do

      assert_select "input[name=?]", "paciente[cpf]"

      assert_select "input[name=?]", "paciente[nome]"

      assert_select "input[name=?]", "paciente[idade]"

      assert_select "input[name=?]", "paciente[genero]"

      assert_select "input[name=?]", "paciente[hip_diag]"
    end
  end
end
