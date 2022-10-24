class CreateTeachersAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers_availabilities do |t|
      t.integer :lecturer_work_day_count
      t.integer :lead_ta_work_day_count
      t.integer :ta_work_day_count

      t.timestamps
    end
  end
end
