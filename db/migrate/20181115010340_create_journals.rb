class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :entry_type
      t.string :text
      t.string :sub_goal_id

      t.timestamps
    end
  end
end
