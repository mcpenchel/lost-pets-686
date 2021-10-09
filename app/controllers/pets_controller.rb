class PetsController < ApplicationController

  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params) # Instantiate a new pet with the values from the form

    @pet.save # Persists the new pet into the DB

    redirect_to pets_path
  end

  def edit
  end

  def update
    @pet.update(pet_params)

    redirect_to pets_path(@pet)
  end

  def destroy
    @pet.destroy

    redirect_to pets_path
  end

  private
  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :species, :size, :found_at)
  end
end
