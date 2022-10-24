class TeachersRoaster < ApplicationRecord
  has_many :teachers_availabilities, foreign_key: 'teacher_id', primary_key: 'teacher_id'
end