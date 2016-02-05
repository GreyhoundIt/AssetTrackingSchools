class HardwaresController < ApplicationController
  before_action :set_hardware, only: [:show, :edit, :update, :destroy]
  before_action :set_instance_var, only: [:new, :edit]

  # GET /hardwares
  # GET /hardwares.json
  def index
    @search = Hardware.search(params[:q])
    @hardwares = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end

  # GET /hardwares/1
  # GET /hardwares/1.json
  def show
  end

  # GET /hardwares/new
  def new
    @hardware = Hardware.new
  end

  # GET /hardwares/1/edit
  def edit
  end

  # POST /hardwares
  # POST /hardwares.json
  def create
    @hardware = Hardware.new(hardware_params)
    @hardware.location_id = params[:location_id]
    @hardware.hardware_category_id = params[:hardware_category_id]
    @hardware.manufacturer_id = params[:manufacturer_id]
    @hardware.supplier_id = params[:supplier_id]
    respond_to do |format|
      if @hardware.save
        format.html { redirect_to @hardware, notice: 'Hardware was successfully created.' }
        format.json { render :show, status: :created, location: @hardware }
      else
        format.html { render :new }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hardwares/1
  # PATCH/PUT /hardwares/1.json
  def update
    respond_to do |format|
      if @hardware.update(hardware_params)
        format.html { redirect_to @hardware, notice: 'Hardware was successfully updated.' }
        format.json { render :show, status: :ok, location: @hardware }
      else
        format.html { render :edit }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hardwares/1
  # DELETE /hardwares/1.json
  def destroy
    @hardware.destroy
    respond_to do |format|
      format.html { redirect_to hardwares_url, notice: 'Hardware was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_instance_var
      @locations = Location.all.map { |e| [e.name, e.id] }
      @categories = HardwareCategory.all.map { |c| [c.name, c.id] }
      @manufacturers = Manufacturer.all.map { |m| [m.name, m.id] }
      @suppliers = Supplier.all.map { |s| [s.name, s.id] }
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_hardware
      @hardware = Hardware.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hardware_params
      params.require(:hardware).permit(:name, :asset_tag, :serial_number, :description, :note, :cost, :purchase_date, :warranty_end_date, :eol, :hardware_category_id, :location_id, :manufacturer_id, :supplier_id)
    end
end
