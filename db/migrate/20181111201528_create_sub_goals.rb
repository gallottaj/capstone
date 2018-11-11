class CreateSubGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_goals do |t|
      t.string :sg_name
      t.string :sg_due_date
      t.string :sg_status

      t.timestamps
    end
  end
end
