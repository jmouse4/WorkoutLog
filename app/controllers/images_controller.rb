class ImagesController < ApplicationController
    def create
        @log = Log.find(params[:log_id])
        @image = @log.images.create(image_params)
        redirect_to log_path(@log)
    end
    
    private
        def image_params
            params.require(:image).permit(:image)
        end
end
