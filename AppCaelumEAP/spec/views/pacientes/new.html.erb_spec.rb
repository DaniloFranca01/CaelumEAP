require 'rails_helper'

RSpec.describe "pacientes/new", type: :view do
  before(:each) do
    assign(:paciente, Paciente.new(
      :cpf => "MyString",
      :nome => "MyString",
      :idade => 1,
      :genero => "MyString",
      :hip_diag => "MyString"
    ))
  end

  it "renders new paciente form" do
    render

    assert_select "form[action=?][method=?]", pacientes_path, "post" do

      assert_select "input[name=?]", "paciente[cpf]"

      assert_select "input[name=?]", "paciente[nome]"

      assert_select "input[name=?]", "paciente[idade]"

      assert_select "input[name=?]", "paciente[genero]"

      assert_select "input[name=?]", "paciente[hip_diag]"
    end
  end
end
