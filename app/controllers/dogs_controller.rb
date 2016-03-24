class DogsController < ApplicationController
    before_action :set_dog, only: [:show, :edit,:update, :destroy]
    before_filter :authenticate_user!, :except => [:index, :show, :new, :list]
    def index
      @dogs = Dog.all
    end
    def list
      @dogs = Dog.all
    end
    def show
    end
    def new
      @dog = Dog.new
    end
    def create
      @dog = Dog.new(dog_params)
      respond_to do |format|
        if @dog.save
          format.html { redirect_to @dog, notice: 'Event was successfully created.' }
          format.json { render action: 'show', status: :created, location: @dog }
        else
          format.html { render action: 'new' }
          format.json { render json: @dog.errors, status: :unprocessable_entity }
        end
      end
    end
    def update
      respond_to do |format|
        if @dog.update(event_params)
          format.html { redirect_to @dog, notice: 'Event was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @dog.errors, status: :unprocessable_entity }
        end
      end
    end
    def destroy
      @dog.destroy
      respond_to do |format|
        format.html { redirect_to events_url }
        format.json { head :no_content }
      end
    end

    private
    def set_dog
      @dogs = Dog.find(params[:id])
    end
    def dog_params
      params.require(:dog).permit(:name, :breed, :age, :cgc, :registration, :therapy_group, :renewal_date, :image, :description, :gender, :member, :retired)
    end
end

