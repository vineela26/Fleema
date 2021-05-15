prawn_document(filename: "lieferschein.pdf", disposition: "inline", type: "application/pdf", template: "#{Rails.root}/app/pdfs/Lieferschein.pdf") do |pdf|
  pdf.draw_text @car.name,                :at => [126, 486], :size => 8
  pdf.draw_text @car.car_model_name,      :at => [126, 477], :size => 8
  pdf.draw_text @car.model,               :at => [126, 466], :size => 8

  current_date = DateTime.now
  pdf.draw_text current_date.strftime("%d.%m.%Y"),
                                          :at => [495, 582], :size => 8


  pdf.draw_text "#{@customer.first_name} #{@customer.last_name}",
                                          :at => [ 40, 608], :size => 10
  pdf.draw_text @customer.email,          :at => [ 40, 594], :size => 10
end
