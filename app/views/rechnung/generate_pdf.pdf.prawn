prawn_document(filename: "rechnung.pdf", disposition: "inline", type: "application/pdf", template: "#{Rails.root}/app/pdfs/Rechnung.pdf") do |pdf|
  pdf.draw_text @car.name,                :at => [155, 487], :size => 8
  pdf.draw_text @car.model,      :at => [155, 474], :size => 8
  pdf.draw_text @car.serie,               :at => [155, 461], :size => 8
  pdf.draw_text number_with_delimiter(@car.mileage),
                                          :at => [155, 422], :size => 8
  pdf.draw_text @car.bhp,                 :at => [155, 399], :size => 8
  pdf.draw_text @car.option.gsub("'", ""),
                                          :at => [ 37, 309], :size => 8
  pdf.draw_text number_to_currency(@car.gross_price),
                                          :at => [380,  90], :size => 10, style: :bold

  current_date = DateTime.now
  pdf.draw_text current_date.strftime("%Y") + '-001',
                                          :at => [501, 592], :size => 8
  pdf.draw_text current_date.strftime("%d.%m.%Y"),
                                          :at => [495, 572], :size => 8
  pdf.draw_text current_date.strftime("%d.%m.%Y"),
                                          :at => [495, 582], :size => 8
  pdf.draw_text 'DE263671039',            :at => [482, 601], :size => 8


  pdf.draw_text "#{@customer.first_name} #{@customer.last_name}",
                                          :at => [ 40, 608], :size => 10
  pdf.draw_text @customer.email,          :at => [ 40, 594], :size => 10
end
