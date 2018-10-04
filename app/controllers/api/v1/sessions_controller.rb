module Api
  module V1
    # Sessions Controller
    class SessionsController < ApiController
      before_action :validate_session_params

      def upload_image
        session = Session.find params[:session][:session_id]
        image_store = ImageStore.create(session_id: session.id, image: params[:session][:image])
        render json: { message: 'Successfully uploded imagge', status: 200 }
      end

      private

        def validate_session_params
          if params_missing?(params[:session], [:session_id, :image])
            # missing parameter
            render json: @error_hash, status: 400
          end
        end

        def session_params
          params.require(:session).permit(:session_id, :image, :time)
        end
    end
  end
end
