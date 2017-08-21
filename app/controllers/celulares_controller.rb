class CelularesController < ApplicationController
  before_action :set_celulare, only: [:show, :edit, :update, :destroy]

  # GET /celulares
  # GET /celulares.json
  def index
    @celulares = Celulare.all
  end

  # GET /celulares/1
  # GET /celulares/1.json
  def show
  end

  # GET /celulares/new
  def new
    @celulare = Celulare.new
  end

  # GET /celulares/1/edit
  def edit
  end

  # POST /celulares
  # POST /celulares.json
  def create
    @celulare = Celulare.new(celulare_params)

    respond_to do |format|
      if @celulare.save
        format.html { redirect_to @celulare, notice: 'Celulare was successfully created.' }
        format.json { render :show, status: :created, location: @celulare }
      else
        format.html { render :new }
        format.json { render json: @celulare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celulares/1
  # PATCH/PUT /celulares/1.json
  def update
    respond_to do |format|
      if @celulare.update(celulare_params)
        format.html { redirect_to @celulare, notice: 'Celulare was successfully updated.' }
        format.json { render :show, status: :ok, location: @celulare }
      else
        format.html { render :edit }
        format.json { render json: @celulare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celulares/1
  # DELETE /celulares/1.json
  def destroy
    @celulare.destroy
    respond_to do |format|
      format.html { redirect_to celulares_url, notice: 'Celulare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
      def reportes 
         @celulares = Celulare.all
         @precioguardado = @celulares.sort_by(&:precio)
         @memoriainguardado = @celulares.sort_by(&:memoriain)
         @memoriaexguardado = @celulares.sort_by(&:memoriaex)
      end 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celulare
      @celulare = Celulare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def celulare_params
      params.require(:celulare).permit(:precio, :modelo, :memoriain, :memoriaex)
    end
end
