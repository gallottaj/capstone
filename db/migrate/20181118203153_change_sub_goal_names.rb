class ChangeSubGoalNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :sub_goals, :sg_name, :sub_goal_name
  end
  def change
    rename_column :sub_goals, :sg_due_date, :sub_goal_due_date
  end
  def change
    rename_column :sub_goals, :sg_status, :sub_goal_status
  end
end

