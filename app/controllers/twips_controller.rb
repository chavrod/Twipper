class TwipsController < ApplicationController
  before_action :set_twip, only: %i[ show edit update destroy ]

  # GET /twips or /twips.json
  def index
    @twips = Twip.all
  end

  # GET /twips/1 or /twips/1.json
  def show
  end

  # GET /twips/new
  def new
    @twip = Twip.new
  end

  # GET /twips/1/edit
  def edit
  end

  # POST /twips or /twips.json
  def create
    @twip = Twip.new(twip_params)

    respond_to do |format|
      if @twip.save
        format.html { redirect_to twip_url(@twip), notice: "Twip was successfully created." }
        format.json { render :show, status: :created, location: @twip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @twip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twips/1 or /twips/1.json
  def update
    respond_to do |format|
      if @twip.update(twip_params)
        format.html { redirect_to twip_url(@twip), notice: "Twip was successfully updated." }
        format.json { render :show, status: :ok, location: @twip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @twip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twips/1 or /twips/1.json
  def destroy
    @twip.destroy

    respond_to do |format|
      format.html { redirect_to twips_url, notice: "Twip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twip
      @twip = Twip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twip_params
      params.require(:twip).permit(:twip)
    end
end
