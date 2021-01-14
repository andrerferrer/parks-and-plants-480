class PlantsController < ApplicationController

    def create
        @plant = Plant.new(strong_params)
        
        @garden = Garden.find( params[:garden_id] )
        @plant.garden = @garden

        if @plant.save
            # redirect_to(garden_path(@garden.id))
            redirect_to garden_path(@garden)
        else
            render :new
        end
    end

    def destroy
        @plant = Plant.find(params[:id])
        @plant.destroy
        # the plant belongs to a garden. So, we can find it
        @garden = @plant.garden
        redirect_to garden_path(@garden)
    end

    private

    def strong_params
        params.require(:plant).permit(:name, :image_url)
    end
end
