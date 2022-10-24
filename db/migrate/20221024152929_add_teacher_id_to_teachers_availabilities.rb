class AddTeacherIdToTeachersAvailabilities < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers_availabilities, :teacher_id, :integer
  end
end
