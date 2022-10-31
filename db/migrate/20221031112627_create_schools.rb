class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :city
      t.string :country
      t.string :address

      t.timestamps
    end
  end
end
