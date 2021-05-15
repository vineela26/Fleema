prawn_document(filename: "handzettel.pdf", disposition: "inline", type: "application/pdf", template: "#{Rails.root}/app/pdfs/Handzettel.pdf") do |pdf|
  pdf.text_box @car.full_name, :at => [35, 15], :size => 14, :style => :bold, width: 240, rotate: 90
  pdf.text_box @car.full_name, :at => [35, 260], :size => 14, :style => :bold, width: 300, rotate: 90
  pdf.text_box @car.full_name, :at => [35, 530], :size => 14, :style => :bold, width: 300, rotate: 90
end
