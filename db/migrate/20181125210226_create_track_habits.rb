class CreateTrackHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :track_habits do |t|
      t.string :habit_name
      t.string :habit_repeat_frequency
      t.string :habit_completion_status
      t.string :habit_time
      t.string :journal_id

      t.timestamps
    end
  end
end
