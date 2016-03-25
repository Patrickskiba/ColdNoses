class PuppiesController < InheritedResources::Base
  before_action :set_puppy, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index, :home,:create, :new, :show, :list]
  # GET /events
  # GET /events.json
  def index
    @puppies = Puppy.all
  end
  def list
    @puppies = Puppy.all
  end

  def new
    @puppy = Puppy.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
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

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
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
  # DELETE /events/1
  # DELETE /events/1.json
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
      params.require(:puppy).permit()
    end
end

