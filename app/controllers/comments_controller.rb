class CommentsController < ApplicationController
  before_filter :authenticate_user!, :except => [:destroy, :create, :edit]
    def create
      @event = Event.find(params[:event_id])
      @comment = @event.comments.create(comment_params)
      @comment.save
      redirect_to event_path(@event)
    end
    def edit
      @comment = @event.comments.find(params[:event_id])

    end
    def destroy
      @event = Event.find(params[:event_id])
      @comment = @event.comments.find(comment_params)
      @comment.destroy
      redirect_to event_path(@event)
    end
      private
      def comment_params
        params.require(:comment).permit(:title, :comment)
      end
  end