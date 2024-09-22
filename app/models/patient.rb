class Patient < ApplicationRecord
    validates :name, :age, :address, :phone, presence: true
  end
  