class BearbeitenController < ApplicationController

  def edit
    @car = Car.find(params[:id])
  end

  def update
    car = Car.find(params[:id])
    car.update(
      name: params[:car][:name],
      model: params[:car][:model],
      category: params[:car][:category],
      first_registration: params[:car][:first_registration],
      bhp: params[:car][:bhp],
      gross_price: params[:car][:gross_price],
      mileage: params[:car][:mileage],
    )
  end
end
