class MailListsController < ApplicationController
  def new
        @maillist = MailList.new
  end
    def create
    @maillist = MailList.new(secure_params)
        if @maillist.valid?
        @maillist.subscribe
        flash[:notice] = "Signed up #{@maillist.email}."
        redirect_to root_path
        else
        render :new
        end
    end
private
    def secure_params
    params.require(:@maillist).permit(:email)
    end
end
