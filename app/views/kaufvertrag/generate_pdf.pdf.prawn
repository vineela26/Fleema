prawn_document(filename: "kaufvertrag.pdf", disposition: "inline", type: "application/pdf", template: "#{Rails.root}/app/pdfs/Kaufvertrag.pdf") do |pdf|
  pdf.draw_text @car.name,                :at => [155, 492], :size => 8
  pdf.draw_text @car.car_model_name,      :at => [155, 479], :size => 8
  pdf.draw_text @car.model,               :at => [155, 466], :size => 8

  current_date = DateTime.now
  pdf.draw_text current_date.strftime("%d.%m.%Y"),
                                          :at => [455, 567], :size => 8


  pdf.draw_text "#{@customer.first_name} #{@customer.last_name}",
                                          :at => [ 40, 588], :size => 10
  pdf.draw_text @customer.email,          :at => [ 40, 574], :size => 10
end
