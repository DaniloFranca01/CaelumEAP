require 'rails_helper'

RSpec.describe Funcionario, type: :model do
  before(:all) do
    @funcionario1 = create(:funcionario)
  end
  it 'is valid with valid attributes' do
    expect(@funcionario1).to be_valid
  end
  it 'has a unique email' do
    funcionario2 = build(:funcionario, nome: 'Danilo')
    expect(funcionario2).to_not be_valid
  end
  it 'is not valid without a password' do
    funcionario2 = build(:user, senha: nil)
    expect(funcionario2).to_not be_valid
  end
  it 'is not valid without a name' do
    funcionario2 = build(:user, nome: nil)
    expect(funcionario2).to_not be_valid
  end
  it 'is not valid without an email' do
    funcionario2 = build(:user, email: nil)
    expect(funcionario2).to_not be_valid
  end
end
