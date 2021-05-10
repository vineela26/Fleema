class ProbefahrtController < ApplicationController
  def generate_pdf
    car = Car.first
    cust = Hinzufugen.first
    pdftest = Car.probefahrt_pdf_html(car,cust)
    kit = PDFKit.new(pdftest, page_size: 'A4')
    pdf_test = kit.to_pdf
    kit.to_file("#{Rails.root}/public/tmp_files/probefahrt.pdf")
    # send_data pdf_test, filename: 'Report.pdf', type: "application/pdf", disposition: "inline"
  end
end
