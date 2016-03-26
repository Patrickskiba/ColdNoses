class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :create,]
  before_filter :authenticate_user!, :except => [:index, :create, :new, :show, :list]
  def index
    @contacts = Contact.all
  end
   def list
    @contacts = Contact.all
   end
  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ApplicationMailer.contact_email(@contact).deliver
      flash[:notice] = "Message sent from #{@contact.name}."
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def set_contact
    @contact = Contact.find(params[:id])
  end
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :content)
    end
end

