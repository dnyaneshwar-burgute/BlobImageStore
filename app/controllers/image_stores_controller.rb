# Image Stores Controller
class ImageStoresController < ApplicationController
  def index
    if params[:session_id].present?
      session = Session.find(params[:session_id])
      @image_stores = session.image_stores
    else
      @image_stores = ImageStore.all
    end
  end
end