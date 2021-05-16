class AddGrossPriceToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :gross_price, :decimal
  end
end
