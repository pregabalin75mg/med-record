class Patient < ApplicationRecord
  has_many :patient_user
  has_many :user, through: :patient_user
end
