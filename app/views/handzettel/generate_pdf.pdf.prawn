prawn_document(filename: "handzettel.pdf", disposition: "inline", type: "application/pdf", template: "#{Rails.root}/app/pdfs/Handzettel.pdf") do |pdf|
  pdf.text_box @car.full_name, :at => [35, 15], :size => 14, :style => :bold, width: 240, rotate: 90
  pdf.text_box @car.full_name, :at => [35, 260], :size => 14, :style => :bold, width: 300, rotate: 90
  pdf.text_box @car.full_name, :at => [35, 535], :size => 14, :style => :bold, width: 300, rotate: 90

  pdf.text_box number_to_currency(@car.gross_price || 0),
                                          :at => [492, 10], :size => 10, style: :bold, rotate: 90, width: 200
  pdf.text_box number_to_currency(@car.gross_price || 0),
                                          :at => [492, 260], :size => 10, style: :bold, rotate: 90, width: 200
  pdf.text_box number_to_currency(@car.gross_price || 0),
                                          :at => [492, 535], :size => 10, style: :bold, rotate: 90, width: 200
end
