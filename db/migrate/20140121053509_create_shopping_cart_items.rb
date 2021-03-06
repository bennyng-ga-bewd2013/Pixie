class CreateShoppingCartItems < ActiveRecord::Migration
  def change
    create_table :shopping_cart_items do |t|
      t.integer :user_id
      t.integer :garment_id
      t.integer :quantity

      t.timestamps
    end
    add_index :shopping_cart_items, :user_id
    add_index :shopping_cart_items, :garment_id
  end
end
