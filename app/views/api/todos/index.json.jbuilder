json.array! @todos do |todo|
  json.task_name todo.task_name
  json.task_description todo.task_description
  json.task_checkbox_status todo.task_checkbox_status
  json.journal_id todo.journal_id
  json.created_at todo.created_at
  json.updated_at todo.updated_at
end