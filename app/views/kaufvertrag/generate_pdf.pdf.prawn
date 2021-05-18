extend ActionView::Helpers::NumberHelper

prawn_document(filename: "kaufvertrag.pdf", disposition: "inline", type: "application/pdf", template: "#{Rails.root}/app/pdfs/Kaufvertrag.pdf") do |pdf|
  pdf.draw_text @car.name,                :at => [155, 492], :size => 8
  pdf.draw_text @car.model,      :at => [155, 479], :size => 8
  pdf.draw_text @car.serie,               :at => [155, 466], :size => 8
  pdf.draw_text number_with_delimiter(@car.mileage),
                                          :at => [155, 440], :size => 8
  pdf.draw_text number_to_currency(@car.gross_price),
                                          :at => [380,  73], :size => 10, style: :bold
  pdf.draw_text @car.bhp,                 :at => [155, 408], :size => 8
  pdf.draw_text @car.option.gsub("'", ""),
                                          :at => [ 37, 178], :size => 8


  current_date = DateTime.now
  pdf.draw_text current_date.strftime("%d.%m.%Y"),
                                          :at => [455, 567], :size => 8
  pdf.draw_text 'DE263671039',            :at => [455, 576], :size => 8


  pdf.draw_text "#{@customer.first_name} #{@customer.last_name}",
                                          :at => [ 40, 588], :size => 10
  pdf.draw_text @customer.email,          :at => [ 40, 574], :size => 10
end
