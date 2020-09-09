class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    pet = Pet.new(pet_params_create)
    pet.save

    redirect_to pet_path(pet)
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    pet = Pet.find(params[:id])
    pet.update(pet_params_create)

    redirect_to pet_path(pet)
  end

  private

  def pet_params_create
    params.require(:pet).permit(:name, :address, :species, :date_found)
  end

  # def pet_params_update
  #   params.require(:pet).permit(:name, :address, :date_found)
  # end
end
