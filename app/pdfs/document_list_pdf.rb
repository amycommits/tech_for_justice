class DocumentListPdf < Prawn::Document
  def initialize
    super
    text "Order goes here"
  end

  # def initialize(document)
  #   super()
  #   @document = document
  #   text "Document \##{@document.document_id}"
  # end
end
