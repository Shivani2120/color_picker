class ColorPlatesController < ApplicationController
    before_action :set_color_plate, only: [:show, :edit, :update, :destroy]
    
    def index
      @color_plates = ColorPlate.all
    end

    def show
    end

    def edit
    end

    def new
      @color_plate = ColorPlate.new
    end

    def create
      @color_plate = ColorPlate.new(color_plate_params)
  
      if @color_plate.save
        redirect_to @color_plate
      else
        redirect_to @color_plate
      end
    end
  
    def destroy
      @color_plate.destroy
      redirect_to color_path(@color)
    end
  
    def update
      respond_to do |format|
        if @color_plate.update(color_plate_params)
          format.html { redirect_to color_url(@color), notice: 'color has been updated' }
        else
          format.html { redirect_to color_url(@color), alert: 'color was not updated!' }
        end
      end
    end
  
    private
  
    def set_color_plate
      @color_plate = ColorPlate.find(params[:id])
    end
  
    def color_plate_params
      params.require(:color_plate).permit(:color_name, :color_code, :color_pik, :color_id)
    end

end
