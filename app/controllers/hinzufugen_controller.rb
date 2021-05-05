class HinzufugenController < ApplicationController

  def new
    @customer = Hinzufugen.new
  end

  def create
    customer = Hinzufugen.create(first_name: params["Vorname"], last_name: params["Nachname"],
                               email:params["e_mail"], postcode: params["Plz"], city: params["Ort"])
    if customer.errors.blank?
      redirect_to "/kundenliste"
    else
      redirect_to '/hinzufugen', flash: {new_solution_errors: customer.errors}
    end
  end


end
