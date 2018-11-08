class LogsController < ApplicationController
    def index
        @log = Log.all
    end 
    def show
        @log = Log.find(params[:id])
    end 
    def new
        @log = Log.new
    end
    def create
        @log = Log.new(log_params)
        byebug
        
        if @log.save
            redirect_to @log
            byebug
        else
            render 'new'
        end
    end
    def edit
        @log = Log.find(params[:id])
    end 
    def update
        @log = Log.find(params[:id])
        if @log.update(log_params)
            redirect_to @log
        else
            render 'edit'
        end
    end 
    def destroy
        @log = Log.find(params[:id])
        @log.destroy
        
        redirect_to logs_path
    end 
end

private
    def log_params
        params.require(:log).permit(:title, :text)
    end 
