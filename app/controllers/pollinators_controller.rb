class PollinatorsController < ApplicationController
  before_action :set_pollinator, only: [:show, :edit, :update, :destroy]
  autocomplete :pollinator, :name, full: true

  # GET /pollinators
  # GET /pollinators.json
  def index
    @pollinators = Pollinator.all
  end

  # GET /pollinators/1
  # GET /pollinators/1.json
  def show
  end

  # GET /pollinators/new
  def new
    @pollinator = Pollinator.new
    @show_selectors = false
  end

  # GET /pollinators/1/edit
  def edit
    @show_selectors = true
  end

  # POST /pollinators
  # POST /pollinators.json
  def create
    @pollinator = Pollinator.new(pollinator_params)

    respond_to do |format|
      if @pollinator.save
        format.html { redirect_to @pollinator, notice: 'pollinator was successfully created.' }
        format.json { render :show, status: :created, location: @pollinator }
      else
        format.html { render :new }
        format.json { render json: @pollinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pollinators/1
  # PATCH/PUT /pollinators/1.json
  def update
    respond_to do |format|
      if @pollinator.update(pollinator_params)
        format.html { redirect_to @pollinator, notice: 'pollinator was successfully updated.' }
        format.json { render :show, status: :ok, location: @pollinator }
      else
        format.html { render :edit }
        format.json { render json: @pollinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pollinators/1
  # DELETE /pollinators/1.json
  def destroy
    @pollinator.destroy
    respond_to do |format|
      format.html { redirect_to pollinators_url, notice: 'pollinator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def associate
    @pollinator = Pollinator.find(params[:id])
    plant = Plant.find_by_id(params[:pollinator][:plants])
    plant.inspect
    #plant = Plant.find(params[:pollinator][:plants])
    @pollinator.plants.append(plant)
    respond_to do |format|
      format.html { redirect_to @pollinator, notice: 'pollinator was successfully updated.' }
      format.json { render :show, status: :ok, location: @pollinator }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pollinator
      @pollinator = Pollinator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pollinator_params
      if params[:pollinator]
        params.require(:pollinator).permit(:name, :family_id, :genus_id, :species_id, :common_name, :description, :associate, :plant)
      else
        params.permit(:name, :family_id, :genus_id, :species_id, :common_name, :description, :associate, :plant)
      end
    end
end
