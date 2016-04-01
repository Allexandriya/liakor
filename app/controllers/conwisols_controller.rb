class ConwisolsController < ApplicationController
  before_action :set_conwisol, only: [:show, :edit, :update, :destroy]

  # GET /conwisols
  # GET /conwisols.json
  def index
    @conwisols = Conwisol.all
  end

  # GET /conwisols/1
  # GET /conwisols/1.json
  def show
  end

  # GET /conwisols/new
  def new
    @conwisol = Conwisol.new
  end

  # GET /conwisols/1/edit
  def edit
  end

  # POST /conwisols
  # POST /conwisols.json
  def create
    @conwisol = Conwisol.new(conwisol_params)

    respond_to do |format|
      if @conwisol.save
        format.html { redirect_to @conwisol, notice: 'Conwisol was successfully created.' }
        format.json { render :show, status: :created, location: @conwisol }
      else
        format.html { render :new }
        format.json { render json: @conwisol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conwisols/1
  # PATCH/PUT /conwisols/1.json
  def update
    respond_to do |format|
      if @conwisol.update(conwisol_params)
        format.html { redirect_to @conwisol, notice: 'Conwisol was successfully updated.' }
        format.json { render :show, status: :ok, location: @conwisol }
      else
        format.html { render :edit }
        format.json { render json: @conwisol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conwisols/1
  # DELETE /conwisols/1.json
  def destroy
    @conwisol.destroy
    respond_to do |format|
      format.html { redirect_to conwisols_url, notice: 'Conwisol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conwisol
      @conwisol = Conwisol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conwisol_params
      params.require(:conwisol).permit(:name, :description, :image_url)
    end
end
