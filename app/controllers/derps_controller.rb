class DerpsController < ApplicationController
  before_action :set_derp, only: [:show, :edit, :update, :destroy]

  # GET /derps
  # GET /derps.json
  def index
    @derps = Derp.all
  end

  # GET /derps/1
  # GET /derps/1.json
  def show
  end

  # GET /derps/new
  def new
    @derp = Derp.new
  end

  # GET /derps/1/edit
  def edit
  end

  # POST /derps
  # POST /derps.json
  def create
    @derp = Derp.new(derp_params)

    respond_to do |format|
      if @derp.save
        format.html { redirect_to @derp, notice: 'Derp was successfully created.' }
        format.json { render :show, status: :created, location: @derp }
      else
        format.html { render :new }
        format.json { render json: @derp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /derps/1
  # PATCH/PUT /derps/1.json
  def update
    respond_to do |format|
      if @derp.update(derp_params)
        format.html { redirect_to @derp, notice: 'Derp was successfully updated.' }
        format.json { render :show, status: :ok, location: @derp }
      else
        format.html { render :edit }
        format.json { render json: @derp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /derps/1
  # DELETE /derps/1.json
  def destroy
    @derp.destroy
    respond_to do |format|
      format.html { redirect_to derps_url, notice: 'Derp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_derp
      @derp = Derp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def derp_params
      params.require(:derp).permit(:title, :derp)
    end
end
