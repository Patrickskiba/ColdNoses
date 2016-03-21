class MailListsController < ApplicationController
  def new
        @mailLists = MailList.new
  end
    def create
    @mailLists = MailList.new(secure_params)
        if @maillist.valid?
        @maillist.subscribe
        flash[:notice] = "Signed up #{@maillist.email}."
        redirect_to root_path
        else
        render :new
        end
    end
  def checked

  end
    
private
    def secure_params
    params.require(:@mailLists).permit(:email)
    end
end
