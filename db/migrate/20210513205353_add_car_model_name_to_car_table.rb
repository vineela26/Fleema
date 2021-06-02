class AddCarModelNameToCarTable < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :car_model_name, :string
  end
end
