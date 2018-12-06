json.array! @sub_goals do |sub_goal|
  json.id sub_goal.id
  json.sub_goal_name sub_goal.sub_goal_name
  json.sub_goal_due_date sub_goal.sub_goal_due_date
  json.sub_goal_status sub_goal.sub_goal_status
  json.created_at sub_goal.created_at
  json.updated_at sub_goal.updated_at
  json.goal_id sub_goal.goal_id
end

