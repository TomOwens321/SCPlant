class ProductionCardsController < ApplicationController
  before_action :set_production_card, only: [:show, :edit, :update, :destroy]

  # GET /production_cards
  # GET /production_cards.json
  def index
    @production_cards = ProductionCard.all
  end

  # GET /production_cards/1
  # GET /production_cards/1.json
  def show
    @steps = @production_card.production_steps
  end

  # GET /production_cards/new
  def new
    if params[:plant]
      @production_card = ProductionCard.new(plant: Plant.find(params[:plant]))
    elsif params[:seed]
      @production_card = ProductionCard.new(plant: Plant.find(params[:plant]), seed: Seed.find(params[:seed]))
    else
      @production_card = ProductionCard.new
    end
  end

  # GET /production_cards/1/edit
  def edit
  end

  # POST /production_cards
  # POST /production_cards.json
  def create
    @production_card = ProductionCard.new(production_card_params)

    respond_to do |format|
      if @production_card.save
        format.html { redirect_to @production_card, notice: 'Production card was successfully created.' }
        format.json { render :show, status: :created, location: @production_card }
      else
        format.html { render :new }
        format.json { render json: @production_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /production_cards/1
  # PATCH/PUT /production_cards/1.json
  def update
    respond_to do |format|
      if @production_card.update(production_card_params)
        format.html { redirect_to @production_card, notice: 'Production card was successfully updated.' }
        format.json { render :show, status: :ok, location: @production_card }
      else
        format.html { render :edit }
        format.json { render json: @production_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_cards/1
  # DELETE /production_cards/1.json
  def destroy
    @production_card.destroy
    respond_to do |format|
      format.html { redirect_to production_cards_url, notice: 'Production card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_card
      @production_card = ProductionCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def production_card_params
      params.require(:production_card).permit(:card_number, :plant_id, :seed_id, :seed_quantity, :quantity_needed, :quantity_produced, :order_id, :seed_decremented, :active)
    end
end
