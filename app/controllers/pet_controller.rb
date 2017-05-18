class PetController < ApplicationController

def new
  @pet = Pet.new
end

def create
  @pet = Pet.new(pet_params)
  @owner = Pet.find_by_owner(params[:dni])
  puts params[:dni]
  if @pet.save
    redirect_to @pet
  else
    render 'new'
  end
end

def show
  @pet = Pet.find(params[:id])
end

def index
  puts params[:dni]
  @pets = Pet.where(owner: params[:dni])
end

def edit
  @pet = Pet.find(params[:id])
  @owner = Pet.find_by_owner(params[:dni])
end

def update
  @pet = Pet.find(params[:id])

  if @pet.update(pet_params)
    redirect_to pet_index_path(dni: params[:owner])
  else
    render 'edit'
  end
end

def destroy
  @pet = Pet.find(params[:id])
  @pet.destroy
  redirect_to pet_index_path(params[:owner])
end

private
  def pet_params
    params.require(:pet).permit(:name, :age, :owner, :alive, :sex, :animal_type, :picture)
  end
end
