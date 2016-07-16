class DocumentListPdf < Prawn::Document
  def initialize(user_info,case_info)
    super()
    font_size 12
    @user_info = user_info
    @case_info = case_info
    text "SUPERIOR COURT OF THE DISTRICT OF COLUMBIA
                  Criminal Division", size: 20, style: :bold, align: :center
    text "UNITED STATES OF AMERICA" 
    text "v."
    text "#{@user_info.first_name} #{@user_info.last_name}"##{@user_info.first_name} #{@user_info.last_name} 
    
    bounding_box([250,670], :width => 150) do
      @case_info.each.with_index do |c,i|
        text ":Criminal Number: #{c.docket_id}"
        text ":#{c.case_conclusion}"  #Closed Case
        if (i < (@case_info.count - 1))  
          text ":"
        end
      end
      text " "
    end

    text "MOTION TO SEAL PUBLICLY AVAILABLE RECORDS IN MULTIPLE CASES"
    text "Pursuant to code § 16-803, #{@user_info.first_name} #{@user_info.last_name} respectfully moves this Honorable Court for an order to seal all publicly available records for each of the arrests and related court proceedings listed below. 
                D.C. Code § 16-803(f) requires the movant to seal all eligible arrests and convictions in the same proceeding.
                   In support of this motion, movant states the following:"
                   
   @case_info.each.with_index do |c,i|
    text "CASE #{i}"
      indent(20) do 
      end 
   end 
              
    text  "For the reasons set forth above and in the accompanying Memorandum, Public 
                requests that the Court order all publicly available records of movant's arrests, convictions, 
                and related court proceedings be sealed. See § 16-803. 
                
                WHEREFORE, for these and such other reasons as may appear to the Court, Public 
                respectfully requests that the motion be granted. 
                                                                Respectfully submitted 
                                                                
                                                                _______________________
                                                                
                                                                _______________________
                                                                
                                                                Filing Pro Se
                                                                
                                                                123 My Street
                                                                Apt. CC
                                                                Washington, DC  20011"
                                                                
                                                                
                                                                
                                                                
                      
  end                                                                                 

  # def initialize(document)
  #   super()
  #   @document = document
  #   text "Document \##{@document.document_id}"
  # end
end
