class AddGoalIdToJournals < ActiveRecord::Migration[5.2]
  def change
    add_column :journals, :goal_id, :string
  end
end
