class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.timestamp :date
      t.references :product_id, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
