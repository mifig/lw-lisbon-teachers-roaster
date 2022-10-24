class CreateBootcampsWeeks < ActiveRecord::Migration[7.0]
  def change
    create_table :bootcamps_weeks do |t|
      t.integer :week
      t.string :course_slug
      t.string :lecture_day_slug

      t.timestamps
    end
  end
end
