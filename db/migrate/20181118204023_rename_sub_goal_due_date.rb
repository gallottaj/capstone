class RenameSubGoalDueDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :sub_goals, :sg_due_date, :sub_goal_due_date
  end
end
