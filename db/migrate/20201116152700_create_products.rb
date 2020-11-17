class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :category_id, null: false, foreign_key: true
      t.text :description
      t.integer :price
      t.references :user_id, null: false, foreign_key: true
      t.boolean :availability, default: true

      t.timestamps
    end
  end
end