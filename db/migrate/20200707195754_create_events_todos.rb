class CreateEventsTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :event_todos do |t|
      t.integer :todo_id
      t.integer :event_id

      t.timestamps
    end
  end
end
