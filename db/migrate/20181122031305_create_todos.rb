class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :task_name
      t.string :task_description
      t.string :task_checkbox_status

      t.timestamps
    end
  end
end
