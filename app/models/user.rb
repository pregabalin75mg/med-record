class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :name, presence: true, uniqueness: true
         validates :employee_number, presence: true, uniqueness: true
         has_many :patient_users
         has_many :patients, through: :patient_users
end
