json.array! @journals do |journal|
  json.entry_type journal.entry_type
  json.entry_body journal.entry_body
  json.created_at journal.created_at
  json.updated_at journal.updated_at
  json.entry_title journal.entry_title
  json.user_id journal.user_id
end


