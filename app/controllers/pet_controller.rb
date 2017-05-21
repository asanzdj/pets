class PetController < ApplicationController

def new
  @pet = Pet.new
end

def create
  @pet = Pet.new(pet_params)
  if @pet.save
    redirect_to controller: 'pet', action: 'index', dni: pet_params[:owner]
  else
    render 'new'
  end
end

def show
  @pet = Pet.find(params[:id])
end

def index
  @pets = Pet.where(owner: params[:dni])
end

def edit
  @pet = Pet.find(params[:id])
end

def update
  @pet = Pet.find(params[:id])
  if @pet.update(pet_params)
    redirect_to controller: 'pet', action: 'index', dni: pet_params[:owner]
  else
    render 'edit'
  end
end

def destroy
  @pet = Pet.find(params[:id])
  @pet.destroy
  redirect_to action: 'index', dni: params[:dni]
end

private
  def pet_params
    params.require(:pet).permit(:name, :age, :owner, :alive, :sex, :animal_type, :picture)
  end
end
