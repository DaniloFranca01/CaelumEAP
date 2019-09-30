require 'rails_helper'

RSpec.describe "funcionarios/new", type: :view do
  before(:each) do
    assign(:funcionario, Funcionario.new(
      :id => "MyString",
      :nome => "MyString",
      :cargo => "MyString",
      :email => "MyString",
      :documento => 1,
      :senha => "MyString"
    ))
  end

  it "renders new funcionario form" do
    render

    assert_select "form[action=?][method=?]", funcionarios_path, "post" do

      assert_select "input[name=?]", "funcionario[id]"

      assert_select "input[name=?]", "funcionario[nome]"

      assert_select "input[name=?]", "funcionario[cargo]"

      assert_select "input[name=?]", "funcionario[email]"

      assert_select "input[name=?]", "funcionario[documento]"

      assert_select "input[name=?]", "funcionario[senha]"
    end
  end
end
