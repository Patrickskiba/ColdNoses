class CommentsController < ApplicationController
  before_filter :authenticate_user!, :except => [:destroy, :create, :edit]
    def create
      @event = Event.find(params[:event_id])
      @user = User.find(params[:user_id])
      @comment = @event.comments.create(comment_params)
      redirect_to event_path(@event)
    end
    def edit
      @event = Event.find(params[:event_id])
      @user = User.find(params[:user_id])
      @comment = @event.comments.find(params[:id])

    end
    def destroy
      @event = Event.find(params[:event_id])
      @user = User.find(params[:user_id])
      @comment = @event.comments.find(params[:id])
      @comment.destroy
      redirect_to event_path(@event)
    end
      private
      def comment_params
        params.require(:comment).permit(:user_name, :body)
      end
  end