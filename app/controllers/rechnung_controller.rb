class RechnungController < ApplicationController
  def generate_pdf
    set_car_and_cust
  end
end
