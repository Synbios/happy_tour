class Admin::MasterController < ApplicationController
  before_action :authenticate_user!
  before_action :set_body_style, only:[:dashboard]
  layout "admin"

  def dashboard
  end

  def products_page
  end

  def locations_page
  end

  private
  def set_body_style
    @body_style = "smart-style-1"
  end
end
