class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_type
      t.string :image_url
      t.string :date
      t.string :time
      t.string :event_url
      t.boolean :ticket

      t.timestamps
    end
  end
end
