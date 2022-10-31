class AddTeachersRoasterToTeachersAvailabilities < ActiveRecord::Migration[7.0]
  def change
    add_reference :teachers_availabilities, :teachers_roasters, null: false, foreign_key: true
  end
end
