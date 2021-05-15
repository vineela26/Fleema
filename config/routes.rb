Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "anmeldung#index"
  
  get "/angebot", to: "angebot#index"
  get "/generate_angebot", to: "angebot#generate_angebot"

  get "/anmeldung", to: "anmeldung#index"
  get "/auswahlen", to: "auswahlen#index"

  get "/bearbeiten", to: "bearbeiten#index"
  get "bearbeiten/:id/edit" => "bearbeiten#edit"
  post "/bearbeiten/:id" => "bearbeiten#update"

  get "/bestand", to: "bestand#index"
  get "/dokumentenliste", to: "dokumentenliste#index"
  get "/handzettel", to: "handzettel#index"

  get "/hinzufugen", to: "hinzufugen#index"
  post "/hinzufugen", to: "hinzufugen#create"

  get "/kaufvertrag", to: "kaufvertrag#index"
  get "/kundenliste", to: "kundenliste#index"
  get "/lieferschein", to: "lieferschein#index"
  get "/login", to: "login#index"
  get "/markt_uberblick", to: "markt_uberblick#index"
  get "/meinedaten", to: "meinedaten#index"
  get "/personliche_einstellungen", to: "personliche_einstellungen#index"
  get "/priesschild", to: "priesschild#index"

  get "/probefahrt", to: "probefahrt#index"
  get "/generate_pdf", to: "probefahrt#generate_pdf"

  get "/rechnung", to: "rechnung#index"
  get "/rechnung", to: "rechnung#index"
  get "/ubersicht", to: "ubersicht#index"
  get "/zugangsdaten", to: "zugangsdaten#index"

  get "/carmodelpopup" => 'popup#carmodelpopup', :as => :carmodel_popup
  get "/carmodelpopup_two" => 'popup#carmodelpopup_two', :as => :carmodel_popup_two
  post "/carmodelpopup_two", to: "popup#create"
  get "/fetch_models", to: "popup#fetch_models"

end
