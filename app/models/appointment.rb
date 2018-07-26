class Appointment < ApplicationRecord
  belongs_to :doctor # a une seule docteur
  belongs_to :patient # a un seul patient
end
