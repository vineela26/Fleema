class ProbefahrtController < ApplicationController
  def generate_pdf
    car = Car.first
    cust = Hinzufugen.first
    file = File.open("/home/vineela/Work/Fleema/app/assets/docs/probefahrt.pdf")
    file.each do |line|
      debugger
    end
    # template_filename = '/home/vineela/Work/Fleema/app/assets/docs/probefahrt.pdf'
    # prawn_filename = 'temp.pdf'
    # output_filename = 'output.pdf'
    # Prawn::Document.generate(prawn_filename) do
    #   # Generate whatever you want here.
    #   text_box "This is some new text!", :at => [100, 300]
    # end
    # PDF::Toolkit.pdftk(prawn_filename, "background", template_filename, "output", output_filename)
  end
end
