class ContactUsController < InheritedResources::Base
  def index
    @contact = ContactU.new
  end
  def list
    @contact = ContactU.new
  end
  def new
    @contact = ContactU.new
  end
  def create
    @contact = ContactU.new(secure_params)
    if @contact.valid?
      ApplicationMailer.contact_email(@contact).deliver
      flash[:notice] = "Message sent from #{@contact.name}."
      redirect_to root_path
    else
      render :new
    end
  end

  private

    def contact_u_params
      params.require(:contact_u).permit(:first_name, :last_name, :email, :content)
    end
end

