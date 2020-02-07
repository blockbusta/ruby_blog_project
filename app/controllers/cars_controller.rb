class CarsController < ApplicationController
    def index
        @cars = Car.all
    end
    
    def show
      @car = Car.find(params[:id])
      end
     
    def new
      if current_user.role != 1
        redirect_to('/cars')
      end
    end
    
    def create
      if current_user.role != 1
        redirect_to('/cars')
      end

      @car = Car.new(car_params)
       
      @car.save
        redirect_to @car
    end
       
      private
    def car_params
          params.require(:car).permit(:title, :description)
    end
end