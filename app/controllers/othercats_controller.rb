class OthercatsController < ApplicationController
  before_action :set_othercat, only: %i[ show edit update destroy ]

  # GET /othercats or /othercats.json
  def index
    @othercats = Othercat.all
  end

  # GET /othercats/1 or /othercats/1.json
  def show
  end

  # GET /othercats/new
  def new
    @othercat = Othercat.new
  end

  # GET /othercats/1/edit
  def edit
  end

  # POST /othercats or /othercats.json
  def create
    @othercat = Othercat.new(othercat_params)

    respond_to do |format|
      if @othercat.save
        format.html { redirect_to othercat_url(@othercat), notice: "Othercat was successfully created." }
        format.json { render :show, status: :created, location: @othercat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @othercat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /othercats/1 or /othercats/1.json
  def update
    respond_to do |format|
      if @othercat.update(othercat_params)
        format.html { redirect_to othercat_url(@othercat), notice: "Othercat was successfully updated." }
        format.json { render :show, status: :ok, location: @othercat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @othercat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /othercats/1 or /othercats/1.json
  def destroy
    @othercat.destroy

    respond_to do |format|
      format.html { redirect_to othercats_url, notice: "Othercat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_othercat
      @othercat = Othercat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def othercat_params
      params.require(:othercat).permit(:name, :description)
    end
end
