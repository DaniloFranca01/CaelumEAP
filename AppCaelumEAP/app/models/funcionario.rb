class Funcionario < ApplicationRecord
  validates :senha, presence:
                    { on: :create },
                    length: { minimum: 8, allow_blank: true }

  validates :email, presence: true,
                    uniqueness: true,
                    format: {
                      with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9\.-]+\.[A-Za-z]+\Z/
                    }
end
