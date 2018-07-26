class Patient < ApplicationRecord
  has_many :appointments # a plusieurs rdv
  has_many :doctors, through: :appointments
end
