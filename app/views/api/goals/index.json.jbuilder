json.array! @goals do |goal|
  json.goal_name goal.goal_name
  json.due_date goal.due_date
  json.status goal.status
  json.journal_id goal.journal_id
  json.created_at goal.created_at
  json.updated_at goal.updated_at
end
