class AddMoreFieldsToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :generation, :string
    add_column :cars, :trim, :string
    add_column :cars, :serie, :string
    add_column :cars, :option, :text
    add_column :cars, :specifications, :text
  end
end
