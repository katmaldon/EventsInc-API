class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :type
      t.string :date
      t.string :time
      t.string :url
      t.boolean :ticket

      t.timestamps
    end
  end
end
