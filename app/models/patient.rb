class Patient < ApplicationRecord
  has_many :patient_users
  has_many :users, through: :patient_users
end
