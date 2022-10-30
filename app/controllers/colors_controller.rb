class ColorsController < ApplicationController
    before_action :set_before, only: [ :edit, :show, :update, :destroy]

    def index
       @colors = Color.all
    end

    def new
       @color = Color.new
    end

    def edit 
    end

    def show
    end

    def create
       @color = Color.new(params_color)
       if @color.save
        redirect_to @color
       else
        render :new
       end
    end

    def update
       if @color.update(params_color)
        redirect_to @color 
       else 
        render :edit
       end
    end

    def destroy
        @color.destroy
        redirect_to @color   
    end 

    private 

    def set_before
       @color = Color.find(params[:id])
    end

    def params_color
       params.require(:color).permit(:name)
    end
end
