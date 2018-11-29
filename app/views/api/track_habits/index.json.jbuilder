json.array! @track_habits do |track_habit|
  json.habit_name track_habit.habit_name
  json.habit_repeat_frequency track_habit.habit_repeat_frequency
  json.habit_completion_status track_habit.habit_completion_status
  json.habit_time track_habit.habit_time
  json.journal_id track_habit.journal_id
  json.created_at track_habit.created_at
  json.updated_at track_habit.updated_at
end
