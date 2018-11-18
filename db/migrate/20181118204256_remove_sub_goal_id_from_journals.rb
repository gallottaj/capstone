class RemoveSubGoalIdFromJournals < ActiveRecord::Migration[5.2]
  def change
    remove_column :journals, :sub_goal_id, :string
  end
end
