class DashboardController < ApplicationController
  def index
      @hardwares = Hardware.all
      @hardware_categories = HardwareCategory.get_type
      @eol = Hardware.nearing_eol
      @softwares = Software.software_renewal
  end
end
