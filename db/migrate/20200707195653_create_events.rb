class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :image_url
      t.string :event_type
      t.string :date #datetime??
      t.string :time #datetiime??
      t.string :location
      t.integer :price
      t.string :event_url
      t.integer :user_id default: null

      t.timestamps
    end
  end
end
