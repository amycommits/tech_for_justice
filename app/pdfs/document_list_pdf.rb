class DocumentListPdf < Prawn::Document
  def initialize
    super
    text "Order goes here"
  end
end
