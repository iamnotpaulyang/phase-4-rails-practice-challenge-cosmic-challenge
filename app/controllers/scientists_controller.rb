class ScientistsController < ApplicationController

    def index
        render json: Scientist.all, status: :ok
    end

    def show #user serializer #usually create private method to make cleaner code
        render json: find_scientist, status: :ok, serializer: ScientistWithPlanetsSerializer 
    end

    def create #raise exception with '!'
        render json: Scientist.create!(scientist_params), status: :created
    end

    def update
        find_scientist.update!(scientist_params)
        render json: find_scientist, status: :accepted
    end

    def destroy
        find_scientist.destroy
        head :no_content
        # or use dependant destory method or line 21
        #find_scientist.missions.destroy_all
    end

    private
    
    def find_scientist
        Scientist.find(params[:id])
    end

    def scientist_params
        params.permit(:name, :field_of_study, :avatar)
    end

end
