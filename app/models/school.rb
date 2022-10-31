class School < ApplicationRecord
  has_many :user_schools, dependent: :destroy
  has_many :users, through: :user_schools
  has_many :teachers, dependent: :destroy
  has_many :teachers_roasters, dependent: :destroy
end
