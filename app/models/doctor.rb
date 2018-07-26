class Doctor < ApplicationRecord
  has_many :appointments # a plusieurs rdv
  has_many :patients, through: :appointments # a plusieurs patients
  has_and_belongs_to_many :specialties
end
