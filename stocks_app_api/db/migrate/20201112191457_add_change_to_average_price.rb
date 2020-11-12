class AddChangeToAveragePrice < ActiveRecord::Migration[6.0]
  def change
    add_column :average_prices, :change_in_price, :decimal
  end
end
