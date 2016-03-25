class PuppiesController < InheritedResources::Base
  before_action :set_puppy, only: [ :show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index, :create, :new, :show, :list]
  def index
    @puppies = Puppy.all
  end
  def list
    @puppies = Puppy.all
  end
  def show
  end
  def new
    @puppy = Puppy.new
  end
  def edit

  end
  def create
    @puppy = Puppy.new(puppy_params)

    respond_to do |format|
      if @puppy.save
        format.html { redirect_to @puppy, notice: 'Puppy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @puppy }
      else
        format.html { render action: 'new' }
        format.json { render json: @puppy.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @puppy.update(puppy_params)
        format.html { redirect_to @puppy, notice: 'Puppy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @puppy.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @puppy.destroy
    respond_to do |format|
      format.html { redirect_to puppies_url}
      format.json { head :no_content }
    end
  end
  private
  def set_puppy
    @puppy = Puppy.find(params[:id])
  end

  def puppy_params
      params.require(:puppy).permit(:name, :breed, :age, :cgc, :registration, :therapy_group, :renewal_date, :image, :description, :gender, :member, :retired)
    end
end

