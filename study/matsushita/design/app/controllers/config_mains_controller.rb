class ConfigMainsController < ApplicationController
  layout 'cms_main'
  before_filter :authenticate_user!
  
  def index
  end
end
