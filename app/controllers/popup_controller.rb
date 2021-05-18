class PopupController < ApplicationController

  def carmodelpopup
  end

  def carmodelpopup_two
  end

  def create
    marke_id = params[:car_marke_key].to_i
    model_id = params[:car_model_key].to_i
    generation_id = params[:car_generation_key].to_i
    trim_id = params[:car_trim_key].to_i

    marke = $car_make.select{|ma| ma.fetch(:id_car_make) == marke_id}.first
    model = $car_model.select{|mo| mo.fetch(:id_car_model) == model_id}.first
    generation = $car_generation.select{|ge| ge.fetch(:id_car_generation) == generation_id }.first
    trim = $car_trim.select{|tr| tr.fetch(:id_car_trim) == trim_id }.first
    serie = $car_serie.select{ |se| se.fetch(:id_car_model) == model_id && se.fetch(:id_car_generation) == generation_id }.first
    equipment = $car_equipment.select{|eq| eq.fetch(:id_car_trim) == trim.fetch(:id_car_trim) }.first
    option_value = $car_option_value.select{|op| op.fetch(:id_car_equipment) == equipment.fetch(:id_car_equipment)} if equipment
    if option_value
      option = $car_option.select{|op| option_value.map{|ov| ov.fetch(:id_car_option) }.include? op.fetch(:id_car_option) }
    else
      option = {}
    end
    specification_values = $car_specification_value.select{ |sp| sp.fetch(:"'id_car_trim'") == "'#{trim_id}'" }
    specification_values_array = specification_values.map{|sp| { id: sp.fetch(:"'id_car_specification'").gsub("'", ""), value: sp.fetch(:"'value'").gsub("'", ""), unit: sp.fetch(:"'unit'").gsub("'", "")} }
    specifications = $car_specification.select {|sp| specification_values_array.map{|sv| sv.fetch(:id).to_i }.include?(sp.fetch(:id_car_specification))} if specification_values.any?
    if specifications
      specs = specification_values_array.map{ |sv| {key: specifications.select{|sc| sc.fetch(:id_car_specification) == sv.fetch(:id).to_i }.first&.fetch(:name), value: sv.fetch(:value), unit: sv.fetch(:unit)} }
    else
      specs = {}
    end

    car = Car.find_or_create_by(
      name: marke.fetch(:name),
      model: model.fetch(:name),
      generation: generation.fetch(:name),
      trim: trim.fetch(:name),
      serie: serie.fetch(:name),
      option: option.map{ |op| op.fetch(:name) }.join(', '),
      specifications: specs,
      bhp: trim.fetch(:name)[/\(.*?\)/].gsub('(','').gsub(')','').gsub(' ps','').to_i,
      first_registration: params["Erstzulassung"],
      car_model_name: params["car_generation_value"]
    )
    redirect_to "/bearbeiten/#{car.id}/edit"
  end
end
