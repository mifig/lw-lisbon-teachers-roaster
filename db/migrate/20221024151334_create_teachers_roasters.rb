class CreateTeachersRoasters < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers_roasters do |t|
      t.integer :teacher_id
      t.string :first_name
      t.string :last_name
      t.string :github_nickname
      t.string :city_of_residence
      t.string :country_of_residence
      t.string :teacher_profile_url

      t.timestamps
    end
  end
end
