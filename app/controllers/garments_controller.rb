class GarmentsController < ApplicationController
    def index
        @garments = Garment.all
    end

    def show
        @garment = Garment.find(params[:id])
    end

    def new
        @garment = Garment.new
    end

    def create
        garment = Garment.create(garment_params)
        redirect_to garment
    end

    def edit
        @garment = Garment.find(params[:id])
    end

    def update
        @garment = Garment.find(params[:id])
        @garment.update(garment_params)

        redirect_to @garment
    end

    def destroy
        Garment.find(params[:id]).destroy

        redirect_to garments_path
    end

    private
    def garment_params
        params.require(:garment).permit(:prenda, :precio, :pic)
    end
end