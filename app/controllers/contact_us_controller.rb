class ContactUsController < ApplicationController
  def index
    @contacts = ContactU.all
  end
   def list
    @contacts = ContactU.all
   end
  def new
    @contact = ContactU.new
  end
  def create
    @contact = ContactU.new(contact_u_params)
    if @contact.valid?
      ApplicationMailer.contact_email(@contact).deliver
      flash[:notice] = "Message sent from #{@contact.name}."
      redirect_to root_path
    else
      render :new
    end
  end
  private
  def set_contact_u
    @contact = ContactU.find(params[:id])
  end
    def contact_u_params
      params.require(:contact).permit(:first_name, :last_name, :email, :content)
    end
end

