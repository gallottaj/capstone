class Rename < ActiveRecord::Migration[5.2]
  def change
    rename_column :sub_goals, :sg_name, :sub_goal_name
  end
end
