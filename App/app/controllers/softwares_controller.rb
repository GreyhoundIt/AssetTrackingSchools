class SoftwaresController < ApplicationController
  before_action :set_software, only: [:show, :edit, :update, :destroy]

  # GET /softwares
  # GET /softwares.json
  def index
    @softwares = Software.all
  end

  # GET /softwares/1
  # GET /softwares/1.json
  def show
  end

  # GET /softwares/new
  def new
    @software = Software.new
    @suppliers = Supplier.all.map { |s| [s.name, s.id] }
  end

  # GET /softwares/1/edit
  def edit
      @suppliers = Supplier.all.map { |s| [s.name, s.id] }
  end

  # POST /softwares
  # POST /softwares.json
  def create
    @software = Software.new(software_params)
    @software.supplier_id = params[:supplier_id]
    respond_to do |format|
      if @software.save
        format.html { redirect_to @software, notice: 'Software was successfully created.' }
        format.json { render :show, status: :created, location: @software }
      else
        format.html { render :new }
        format.json { render json: @software.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /softwares/1
  # PATCH/PUT /softwares/1.json
  def update
    respond_to do |format|
      if @software.update(software_params)
        format.html { redirect_to @software, notice: 'Software was successfully updated.' }
        format.json { render :show, status: :ok, location: @software }
      else
        format.html { render :edit }
        format.json { render json: @software.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /softwares/1
  # DELETE /softwares/1.json
  def destroy
    @software.destroy
    respond_to do |format|
      format.html { redirect_to softwares_url, notice: 'Software was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_software
      @software = Software.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def software_params
      params.require(:software).permit(:name, :asset_tag, :invoice, :cost, :purchase_date, :renewal_date, :licence_key, :number_of_licences, :licence_type, :description, :note, :supplier_id)
    end
end
