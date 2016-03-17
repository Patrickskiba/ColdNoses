class ContactUsController < ApplicationController
  def new
      @contact = Contact.new
  end
  def createuser
      @contact = Contact.new(secure_params)
      if @contact.valid?
          UserMailer.contact_email(@contact).deliver
          flash[:notice] = "Message sent from #{@contact.name}."
          redirect_to root_path
      else
          render :new
      end
  end
private
  def secure_params
      params.require(:contact.permit(:name, :email, :content))
  end
end
  