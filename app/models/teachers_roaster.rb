class TeachersRoaster < ApplicationRecord
  has_many :teachers_availabilities, dependent: :destroy
  belongs_to :school

  def to_a
    attributes.map do |k,v|
      v.class == String ? v.gsub(/\s+/, ' ') : v
    end
  end
end