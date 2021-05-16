prawn_document(filename: "probefahrt.pdf", disposition: "inline", type: "application/pdf", template: "#{Rails.root}/app/pdfs/Probefahrt.pdf") do |pdf|
  pdf.draw_text @car.name,                :at => [140, 412], :size => 8
  pdf.draw_text @car.car_model_name,      :at => [140, 403], :size => 8
  pdf.draw_text @car.model,               :at => [140, 393], :size => 8

  current_date = DateTime.now
  pdf.draw_text current_date.strftime("%d.%m.%Y - %H:%M"),
                                          :at => [170, 228], :size => 8
  pdf.draw_text @car.mileage,             :at => [410, 228], :size => 8


  pdf.draw_text "#{@customer.first_name} #{@customer.last_name}",
                                          :at => [ 90, 592], :size => 10
  pdf.draw_text @customer.email,          :at => [ 90, 486], :size => 10
end
