class HardwareCategoriesController < ApplicationController
  before_action :set_hardware_category, only: [:show, :edit, :update, :destroy]

  # GET /hardware_categories
  # GET /hardware_categories.json
  def index
    @hardware_categories = HardwareCategory.all
  end

  # GET /hardware_categories/1
  # GET /hardware_categories/1.json
  def show
  end

  # GET /hardware_categories/new
  def new
    @hardware_category = HardwareCategory.new
  end

  # GET /hardware_categories/1/edit
  def edit
  end

  # POST /hardware_categories
  # POST /hardware_categories.json
  def create
    @hardware_category = HardwareCategory.new(hardware_category_params)

    respond_to do |format|
      if @hardware_category.save
        format.html { redirect_to @hardware_category, notice: 'Hardware category was successfully created.' }
        format.json { render :show, status: :created, location: @hardware_category }
      else
        format.html { render :new }
        format.json { render json: @hardware_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hardware_categories/1
  # PATCH/PUT /hardware_categories/1.json
  def update
    respond_to do |format|
      if @hardware_category.update(hardware_category_params)
        format.html { redirect_to @hardware_category, notice: 'Hardware category was successfully updated.' }
        format.json { render :show, status: :ok, location: @hardware_category }
      else
        format.html { render :edit }
        format.json { render json: @hardware_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hardware_categories/1
  # DELETE /hardware_categories/1.json
  def destroy
    @hardware_category.destroy
    respond_to do |format|
      format.html { redirect_to hardware_categories_url, notice: 'Hardware category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hardware_category
      @hardware_category = HardwareCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hardware_category_params
      params.require(:hardware_category).permit(:name)
    end
end
