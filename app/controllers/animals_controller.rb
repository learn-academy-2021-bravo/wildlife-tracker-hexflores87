class AnimalsController < ApplicationController
   def index
     animals = Animal.all
     render json: animals
   end
   def upate
    animals = Animal.all(parma[:id])
    render json: animals
    if animals.update
      render json: animals
    else 
      render json: animals.errors
    end
  end
  def show
    animals = Animal.find([params[:id]])
    render json: animals
   end
   def destroy 
    animals = Animal.find(:params[:id])
    if animals.destroy
      render json:animals
    else
      render json:animals.errors
    end
   end
 end
