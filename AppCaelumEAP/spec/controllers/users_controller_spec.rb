require 'rails_helper'

RSpec.describe UsersController, type: :controller do

    describe 'constructor' do
      before(:all) do
        @user = build(:user)
      end
      it 'is not valid without an email' do
        @user2 = build(:user, email: nil)
        expect(@user2).not_to be_valid  
      end
      it 'is not valid without an password' do
        @user2 = build(:user, password: nil)
        expect(@user2).not_to be_valid  
      end
      it 'must have a 6 minimum characters password' do
        @user2 = build(:user, password: '1234')
        expect(@user2).not_to be_valid
      end
    end

    describe 'getters and setters' do
        nome = FFaker::Name.first_name
        cargo = %i[medico enfermeiro nutricionista fisioterapeuta].sample
        documento = FFaker::Random.rand(1..99)
        email = FFaker::Internet.email
        password = FFaker::Internet.password(min_length = 6) 
    
        before(:all) do
          @user = build(:user, nome: nome, cargo: cargo, documento: documento, email: email, password: password)
        end
        it 'should set email' do
          expect(@user.email).to eq(email)
        end
        it 'should set password' do
          expect(@user.password).to eq(password)
        end
        it 'should be able to change email' do
          new_email = FFaker::Internet.email
          @user.email = new_email
          expect(@user.email).to eq(new_email)
        end
        it 'should be able to change password' do
          new_password = FFaker::Internet.password(min_length = 6)
          @user.password = new_password
          expect(@user.password).to eq(new_password)
        end
    end
end
