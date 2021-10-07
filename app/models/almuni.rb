class Almuni < ApplicationRecord
  ##validations
		validates :fullname, :presence => true 
		validates :sex, :presence => true
		validates :phone_number, :presence => true
		has_many_attached :documents
		has_one_attached :qr_code
    has_one_attached :barcode


  after_create :generate_qr
  def generate_qr
    GenerateQr.call(self)
    GenerateBarcode.call(self)
  end
end
