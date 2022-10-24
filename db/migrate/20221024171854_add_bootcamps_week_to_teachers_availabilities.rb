class AddBootcampsWeekToTeachersAvailabilities < ActiveRecord::Migration[7.0]
  def change
    add_reference :teachers_availabilities, :bootcamps_week, null: false, foreign_key: true
  end
end
