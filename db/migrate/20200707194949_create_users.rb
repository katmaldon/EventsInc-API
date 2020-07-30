class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :image_url
      t.integer :age
      t.string :location
      t.string :bio

      t.timestamps
    end
  end
end
