prawn_document(filename: "preisschild.pdf", disposition: "inline", type: "application/pdf", template: "#{Rails.root}/app/pdfs/Preisschild.pdf") do |pdf|
  pdf.text_box @car.full_name, :at => [-10, 682], :size => 40, :style => :bold
end
