class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.string :category
      t.string :bhp
      t.datetime :first_registration

      t.timestamps
    end
  end
end
