class AnimalsController < ApplicationController
   def index
     animals = Animal.all
     render json: animals
   end

  def show
    animal = Animal.find(params[:id])
    sightings = animal.sightings
    render json: {:animal => animal, :sightings => sightings} 
    
  end

  def create
    animal = Animal.create(animal_params)
    if animal.valid?
      render json: animal
    end
  end

  def destroy 
    animal = Animal.find(:params[:id])
    if animals.destroy
      render json:animals
    else
      render json:animals.errors
    end
  end

  def update 
    animal = Animal.find(params[:id])
    animal.update(animal_params)
    if animal.valid?
      render json: animal
    else
      render json: animal.errors
    end
  end

   private
   def animal_params 
    params.require(:animal).permit(:name, :latinname, :kingdom)
   end

 end
