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

    marke = TheCar::Make.find("'#{marke_id}'")
    model = TheCar::Model.find("'#{model_id}'")
    generation = TheCar::Generation.find("'#{generation_id}'")
    trim = TheCar::Trim.find("'#{trim_id}'")
    serie = TheCar::Serie.where(id_car_model: "'#{model_id}'", id_car_generation: "'#{generation_id}'").first
    equipment = TheCar::Equipment.where(id_car_trim: trim.id).first
    option_value = TheCar::OptionValue.where(id_car_equipment: equipment&.id)
    option = TheCar::Option.where(id: option_value&.map(&:id_car_option))
    specification_values = TheCar::SpecificationValue.where(id_car_trim: trim.id)
    specification_values_array = specification_values.map{|sp| { id: sp.id_car_specification, value: sp.value, unit: sp.unit} }
    specifications = TheCar::Specification.where(id: specification_values_array.map{|sv| sv.fetch(:id) })
    specs = specification_values_array.map{ |sv| {key: specifications.select{|sc| sc.id == sv.fetch(:id) }.first&.name, value: sv.fetch(:value), unit: sv.fetch(:unit)} }

    car = Car.find_or_create_by(
      name: marke.name.gsub("'", ""),
      model: model.name.gsub("'", ""),
      generation: generation.name.gsub("'", ""),
      trim: trim.name.gsub("'", ""),
      serie: serie.name.gsub("'", ""),
      option: option.map{ |op| op.name }.join(', '),
      specifications: specs,
      bhp: trim.name.gsub("'", "")[/\(.*?\)/].gsub('(','').gsub(')','').gsub(' ps','').to_i,
      first_registration: params["Erstzulassung"],
      car_model_name: params["car_generation_value"],
    )

    redirect_to "/bearbeiten/#{car.id}/edit"
  end
end
