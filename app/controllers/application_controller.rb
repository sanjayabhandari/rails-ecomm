class ApplicationController < BaseController
  before_action :authenticate_admin!  ,:set_pagetitle
  layout :layout_by_resource

  def layout_by_resource
      if devise_controller?
        "application"
      else
        "admin-application"
      end
    end


    def set_pagetitle
      if (params[:action] == "index")
        @page_title = self.class.name.sub("Controller", "").singularize.to_s + " " + "List "
        
        if self.class.name.sub("Controller", "").singularize.to_s =='Dashboard'
         @page_title= 'Dashboard'
        end
      else
        puts (self.class.name.sub("Controller", ""))
        @page_title = self.class.name.sub("Controller", "").singularize.to_s + "  "+ params[:action].to_s.capitalize
      end
      @page_title
    end
end
