class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :category_id
      t.string :image
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
