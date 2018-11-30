class PicturesController < ApplicationController
    def create
        @log = Log.find(params[:log_id])
        @picture = @log.pictures.create(picture_params)
        redirect_to log_path(@log)
    end
    
    def destroy
        @log = Log.find(params[:log_id])
        @picture = @log.pictures.find(params[:id])
        @picture.destroy
        redirect_to log_path(@log)
    end
    
    private
        def picture_params
            params.require(:picture).permit(:name)
        end
end
