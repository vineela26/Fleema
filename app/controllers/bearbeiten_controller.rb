class BearbeitenController < ApplicationController

  def edit
    @car = Car.find(params[:id])
  end

  def update
    car = Car.find(params[:id])
    car.update(params.permit![:car])
    car.photo.attach(params[:car][:photo]) if params[:car][:photo]
    car.save!

    redirect_to "/bestand"
  end
end
