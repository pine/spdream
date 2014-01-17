# -*- coding: utf-8 -*-

class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource
  
  def layout_by_resource
    # ログイン画面
    if devise_controller?
      'cms_login'
    
    # その他
    else
      'application'
    end
  end
  
  def after_sign_in_path_for(resource)
    cms_top_main_path
  end
  
  def after_sign_out_path_for(resource)
     new_user_session_path
  end
end
