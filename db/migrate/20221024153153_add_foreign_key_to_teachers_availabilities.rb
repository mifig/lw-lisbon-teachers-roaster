class AddForeignKeyToTeachersAvailabilities < ActiveRecord::Migration[7.0]
  def change
    add_index :teachers_roasters, :teacher_id, unique: true
    add_foreign_key :teachers_availabilities, :teachers_roasters, column: :teacher_id, primary_key: :teacher_id
  end
end
