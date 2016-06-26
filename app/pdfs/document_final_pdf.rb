class DocumentFinalPdf < Prawn::Document
  # def initialize
  #   super
  #   text "Document goes here"
  # end

  def initialize(document)
    super()
    @document = document
    text "Document \##{@document.document_id}"
  end
end
