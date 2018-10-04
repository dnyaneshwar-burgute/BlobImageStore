# Sessions Controller
class SessionsController < ApplicationController
  def index
    if params[:device_id].present?
      device = Device.find(params[:device_id])
      @sessions = device.sessions
    else
      @sessions = Session.all
    end
  end
end
