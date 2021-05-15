class PopupController < ApplicationController

  def carmodelpopup
    # respond_to do |format|
    #   format.js { render json: @pdf_path.to_json }
    #   format.html
    # end
  end

  def carmodelpopup_two

  end

  def create
    car = Car.find_or_create_by(name: params["car_marke_value"], model: params["car_model_value"], first_registration: params["Erstzulassung"], car_model_name: params["car_generation_value"])
    redirect_to "/bearbeiten/#{car.id}/edit"
  end
end
