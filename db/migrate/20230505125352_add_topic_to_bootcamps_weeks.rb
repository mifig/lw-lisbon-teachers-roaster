class AddTopicToBootcampsWeeks < ActiveRecord::Migration[7.0]
  def change
    add_column :bootcamps_weeks, :topic, :string
  end
end
