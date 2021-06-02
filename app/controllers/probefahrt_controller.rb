class ProbefahrtController < ApplicationController
  def generate_pdf
    if params["car_id"] && params["cust_id"]
      car = Car.find(params["car_id"].to_i)
      cust = Hinzufugen.find(params["cust_id"].to_i)
      pdftest = Car.probefahrt_pdf_html(car,cust)
      kit = PDFKit.new(pdftest, page_size: 'A4')
      pdf_test = kit.to_pdf
      kit.to_file("#{Rails.root}/public/tmp_files/probefahrt.pdf")
      # render pdf: "#{Rails.root}/public/tmp_files/probefahrt.pdf",
      #        orientation: 'Portrait',
      #        template: "Invoice/download",
      #        page_size:  'Letter'
      # send_data pdf_test.render, filename: "probefahrt.pdf",
      #           type: "application/pdf",
      #           disposition: "inline"
      send_file "#{Rails.root}/public/tmp_files/probefahrt.pdf", filename: 'probefahrt.pdf', type: "application/pdf" , disposition: "inline"
      #  @pdf_path = "#{Rails.root}/public/tmp_files/probefahrt.pdf"
    else
      send_file "#{Rails.root}/app/assets/docs/probefahrt.pdf", filename: 'probefahrt.pdf', type: "application/pdf" , disposition: "inline"
      # @pdf_path = "#{Rails.root}/app/assets/docs/probefahrt.pdf"
    end
  end
end
