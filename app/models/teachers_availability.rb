class TeachersAvailability < ApplicationRecord
  belongs_to :teachers_roaster, foreign_key: 'teacher_id', primary_key: 'teacher_id', optional: true
  belongs_to :bootcamps_week
end
