require 'rails_helper'

RSpec.describe "funcionarios/index", type: :view do
  before(:each) do
    assign(:funcionarios, [
      Funcionario.create!(
        :id => "Id",
        :nome => "Nome",
        :cargo => "Cargo",
        :email => "Email",
        :documento => 2,
        :senha => "Senha"
      ),
      Funcionario.create!(
        :id => "Id",
        :nome => "Nome",
        :cargo => "Cargo",
        :email => "Email",
        :documento => 2,
        :senha => "Senha"
      )
    ])
  end

  it "renders a list of funcionarios" do
    render
    assert_select "tr>td", :text => "Id".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cargo".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
  end
end
