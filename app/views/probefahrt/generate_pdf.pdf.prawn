prawn_document(filename: "probefahrt.pdf", disposition: "inline", type: "application/pdf", template: "#{Rails.root}/public/tmp_files/probefahrt.pdf") do |pdf|
  pdf.draw_text "Direct download incoming!", :at => [94,477], :size => 6
end
