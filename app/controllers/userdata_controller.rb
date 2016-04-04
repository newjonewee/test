class UserdataController < ApplicationController
  before_action :set_userdatum, only: [:show, :edit, :update, :destroy]

  # GET /userdata
  # GET /userdata.json
  def index
    @userdata = Userdatum.all
  end

  # GET /userdata/1
  # GET /userdata/1.json
  def show
  end

  # GET /userdata/new
  def new
    @userdatum = Userdatum.new
  end

  # GET /userdata/1/edit
  def edit
  end

  # POST /userdata
  # POST /userdata.json
  def create
    @userdatum = Userdatum.new(userdatum_params)

    respond_to do |format|
      if @userdatum.save
        format.html { redirect_to @userdatum, notice: 'Userdatum was successfully created.' }
        format.json { render :show, status: :created, location: @userdatum }
      else
        format.html { render :new }
        format.json { render json: @userdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userdata/1
  # PATCH/PUT /userdata/1.json
  def update
    respond_to do |format|
      if @userdatum.update(userdatum_params)
        format.html { redirect_to @userdatum, notice: 'Userdatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @userdatum }
      else
        format.html { render :edit }
        format.json { render json: @userdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userdata/1
  # DELETE /userdata/1.json
  def destroy
    @userdatum.destroy
    respond_to do |format|
      format.html { redirect_to userdata_url, notice: 'Userdatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userdatum
      @userdatum = Userdatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userdatum_params
      params.require(:userdatum).permit(:name, :data)
    end
end
