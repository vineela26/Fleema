class KundenlisteController < ApplicationController

  def index
    @customers = Hinzufugen.all
    respond_to do |format|
      format.html
      format.json  { render :json => @customers }
    end
  end
end
