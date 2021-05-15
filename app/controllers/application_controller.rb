class ApplicationController < ActionController::Base
  def set_car_and_cust
    car_id = params[:car_id] || Car.last.id
    cust_id = params[:cust_id] || Hinzufugen.last.id

    @car = Car.find(car_id)
    @customer = Hinzufugen.find(cust_id)
  end
end
