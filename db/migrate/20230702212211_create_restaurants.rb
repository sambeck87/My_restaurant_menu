class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :phone_number
      t.string :type
      t.string :image

      t.timestamps
    end
  end
end
