class AddSubGoalBody < ActiveRecord::Migration[5.2]
  def change
    add_column :sub_goals, :sub_goal_description, :string
  end
end

