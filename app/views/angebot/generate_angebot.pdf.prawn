prawn_document(filename: "angebot.pdf", disposition: "inline", type: "application/pdf", template: "#{Rails.root}/app/pdfs/Angebot.pdf") do |pdf|
  pdf.draw_text @car.name,                :at => [155, 485], :size => 8
  pdf.draw_text @car.car_model_name,      :at => [155, 472], :size => 8
  pdf.draw_text @car.model,               :at => [155, 459], :size => 8

  current_date = DateTime.now
  pdf.draw_text current_date.strftime("%d.%m.%Y"),
                                          :at => [455, 591], :size => 8


  pdf.draw_text "#{@customer.first_name} #{@customer.last_name}",
                                          :at => [ 40, 602], :size => 10
  pdf.draw_text @customer.email,          :at => [ 40, 588], :size => 10
end
