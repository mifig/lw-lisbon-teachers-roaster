class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :github_nickname

      t.timestamps
    end
  end
end
