class ContactsController < ApplicationController  
  def new
    @contact = Contact.new
  end
    
  def create
    @contact = Contact.new(contact_params)
    if @contact.deliver
      render :thank_you
    else
      render :new
    end
  end
  
  private

  def contact_params
    params.require(:contact).permit( :nickname, 
                                     :name, 
                                     :email, 
                                     :subject, 
                                     :message
                                    )
  end
end
