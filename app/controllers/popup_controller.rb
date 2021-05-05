class PopupController < ApplicationController

  def carmodelpopup

  end

  def carmodelpopup_two

  end

  def create
    car = Car.find_or_create_by(name: params["marke"], model: params["Model"], first_registration: params["Erstzulassung"])
    redirect_to "/bearbeiten/#{car.id}/edit"
  end

end