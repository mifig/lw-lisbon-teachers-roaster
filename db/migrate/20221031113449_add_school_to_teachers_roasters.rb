class AddSchoolToTeachersRoasters < ActiveRecord::Migration[7.0]
  def change
    add_reference :teachers_roasters, :school, null: false, foreign_key: true
  end
end
