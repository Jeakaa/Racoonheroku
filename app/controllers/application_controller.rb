class ApplicationController < ActionController::Base

  rescue_from(AbstractController::ActionNotFound, ActiveRecord::RecordNotFound, ActionController::RoutingError,  with: :render_404)

  def render_404
    if params[:format].present? && params[:format] != 'html'
      head status: 404
    else
      render '404', status: 404
    end
  end

  def index
    
  end

end
