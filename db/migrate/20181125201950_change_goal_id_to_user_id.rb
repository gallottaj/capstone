class ChangeGoalIdToUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :journals, :goal_id, :user_id
  end
end
