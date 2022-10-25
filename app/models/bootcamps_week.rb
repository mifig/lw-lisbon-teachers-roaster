class BootcampsWeek < ApplicationRecord
  has_many :teachers_availabilities, dependent: :destroy
end
