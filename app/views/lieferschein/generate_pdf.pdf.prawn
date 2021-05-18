prawn_document(filename: "lieferschein.pdf", disposition: "inline", type: "application/pdf", template: "#{Rails.root}/app/pdfs/Lieferschein.pdf") do |pdf|
  pdf.draw_text @car.name,                :at => [126, 486], :size => 8
  pdf.draw_text @car.model,               :at => [126, 477], :size => 8
  pdf.draw_text @car.serie,               :at => [126, 468], :size => 8
  pdf.draw_text number_with_delimiter(@car.mileage),
                                          :at => [126, 438], :size => 8
  pdf.draw_text @car.bhp,                 :at => [126, 428], :size => 8

  current_date = DateTime.now
  pdf.draw_text current_date.strftime("%d.%m.%Y"),
                                          :at => [495, 592], :size => 8
  pdf.draw_text current_date.strftime("%d.%m.%Y"),
                                          :at => [495, 582], :size => 8
  pdf.draw_text 'DE263671039',            :at => [483, 601], :size => 8


  pdf.draw_text "#{@customer.first_name} #{@customer.last_name}",
                                          :at => [ 40, 608], :size => 10
  pdf.draw_text @customer.email,          :at => [ 40, 594], :size => 10
end
