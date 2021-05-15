class ProbefahrtController < ApplicationController
  def generate_pdf
    @car = Car.find(params[:car_id])
    @customer = Hinzufugen.find(params[:cust_id])
  end
end
