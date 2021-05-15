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

  def fetch_models
    require 'net/http'

    uri = URI.parse("https://autoact.mobile.de/autoact/vehicleType/listModelsByMakeIdJSON?makeKey=ABARTH")


    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(uri.request_uri)
    request['Accept-Language'] = 'de-DE,de;q=0.8,en-US;q=0.5,en;q=0.3'
    request['Accept'] = 'application/json, text/javascript, */*; q=0.01'
    request['X-Requested-With'] = 'XMLHttpRequest'
    request['DNT'] = '1'
    request['Connection'] = 'keep-alive'
    request['Referer'] = 'https://autoact.mobile.de/autoact/vehicleManagement/inventory'
    request['Cookie'] = 'uuid230=3c7d0c18-99c0-4a65-a50c-8317098639e9; via=classistatic; deviceRegistrationToken="17857673,7f1d6f62c5bd86d6c41d656d3b14ae2aa98f70b4"; a2SID=9a7f0facd2cb4f02868d88d191f28a0c048604b0dd31bac395945e7fe0dc180b00000178ca5d0a25; SESSION=41dc889c-dbf9-4228-a8bd-a0afc6ba4271;'
    request['Pragma'] = 'no-cache'
    request['Cache-Control'] = 'no-cache'
    
    https.request(request)
  end

end
