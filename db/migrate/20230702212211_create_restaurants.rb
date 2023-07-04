class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone_number
      t.string :food
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
