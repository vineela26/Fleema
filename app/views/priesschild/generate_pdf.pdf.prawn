prawn_document(filename: "preisschild.pdf", disposition: "inline", type: "application/pdf", template: "#{Rails.root}/app/pdfs/Preisschild.pdf") do |pdf|
  pdf.text_box @car.full_name, :at => [-10, 682], :size => 40, :style => :bold
  pdf.text_box @car.transmission, :at => [225, 552], :size => 20, :style => :bold
  kw = (@car.bhp.gsub("'", "").to_i/0.735499).round(2) if @car.bhp
  pdf.text_box "#{kw} KW (#{@car.bhp} PS)", :at => [225, 524], :size => 20, :style => :bold
  pdf.text_box @car.option.gsub("'", ""),
                                          :at => [ -13, 318], :size => 11, width: 550
  pdf.draw_text number_to_currency(@car.gross_price),
                                          :at => [150,  90], :size => 42, style: :bold
  pdf.draw_text @car.first_registration&.strftime("%m/%Y"),
                                          :at => [90, 537], :size => 24, :style => :bold
end
