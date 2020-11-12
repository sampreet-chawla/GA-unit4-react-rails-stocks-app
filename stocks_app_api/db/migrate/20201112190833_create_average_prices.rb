class CreateAveragePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :average_prices do |t|
      t.decimal :price
      t.date :price_date
      t.references :stock, null: false, foreign_key: true

      t.timestamps
    end
  end
end
