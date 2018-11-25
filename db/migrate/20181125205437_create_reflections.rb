class CreateReflections < ActiveRecord::Migration[5.2]
  def change
    create_table :reflections do |t|
      t.string :reflection_type
      t.string :reflection_title
      t.string :reflection_body
      t.string :reflection_entry_date
      t.string :journal_id

      t.timestamps
    end
  end
end
