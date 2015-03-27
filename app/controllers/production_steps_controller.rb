class ProductionStepsController < ApplicationController
  before_action :set_production_step, only: [:show, :edit, :update, :destroy]

  # GET /production_steps
  # GET /production_steps.json
  def index
    @production_steps = ProductionStep.all
  end

  # GET /production_steps/1
  # GET /production_steps/1.json
  def show
  end

  # GET /production_steps/new
  def new
    @production_step = ProductionStep.new
  end

  # GET /production_steps/1/edit
  def edit
  end

  # POST /production_steps
  # POST /production_steps.json
  def create
    @production_step = ProductionStep.new(production_step_params)

    respond_to do |format|
      if @production_step.save
        format.html { redirect_to @production_step, notice: 'Production step was successfully created.' }
        format.json { redirect_to "#" }
      else
        format.html { render :new }
        format.json { render json: @production_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /production_steps/1
  # PATCH/PUT /production_steps/1.json
  def update
    respond_to do |format|
      if @production_step.update(production_step_params)
        format.html { redirect_to @production_step, notice: 'Production step was successfully updated.' }
        format.json { render :show, status: :ok, location: @production_step }
      else
        format.html { render :edit }
        format.json { render json: @production_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_steps/1
  # DELETE /production_steps/1.json
  def destroy
    @production_step.destroy
    respond_to do |format|
      format.html { redirect_to production_steps_url, notice: 'Production step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_step
      @production_step = ProductionStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def production_step_params
      params.require(:production_step).permit(:production_card_id, :step_date, :process, :description, :notes)
    end
end
