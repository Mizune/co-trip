class QuponsController < ApplicationController
  before_action :set_qupon, only: [:show, :edit, :update, :destroy]

  # GET /qupons
  # GET /qupons.json
  def index
    @qupons = Qupon.all
  end

  def get
    @qupons = Qupon.find_all_by_quponflag(true)
    # @qupons = Qupon.all
  end

  # GET /qupons/1
  # GET /qupons/1.json
  def show
  end

  # GET /qupons/new
  def new
    @qupon = Qupon.new
  end

  # GET /qupons/1/edit
  def edit
  end

  # POST /qupons
  # POST /qupons.json
  def create
    @qupon = Qupon.new(qupon_params)

    respond_to do |format|
      if @qupon.save
        format.html { redirect_to @qupon, notice: 'Qupon was successfully created.' }
        format.json { render action: 'show', status: :created, location: @qupon }
      else
        format.html { render action: 'new' }
        format.json { render json: @qupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qupons/1
  # PATCH/PUT /qupons/1.json
  def update
    respond_to do |format|
      if @qupon.update(qupon_params)
        format.html { redirect_to @qupon, notice: 'Qupon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @qupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qupons/1
  # DELETE /qupons/1.json
  def destroy
    @qupon.destroy
    respond_to do |format|
      format.html { redirect_to qupons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qupon
      # @qupon = Qupon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qupon_params
      params.require(:qupon).permit(:name, :date, :image, :quponflag, :discription)
    end
end
