class TeachersRoaster < ApplicationRecord
  has_many :teachers_availabilities, foreign_key: 'teacher_id', primary_key: 'teacher_id'

  def to_a
    attributes.map do |k,v|
      v.class == String ? v.gsub(/\s+/, ' ') : v
    end
  end
end