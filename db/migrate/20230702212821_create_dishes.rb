class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :price
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
