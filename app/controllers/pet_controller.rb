class PetController < ApplicationController

def new
  @pet = Pet.new
end

def create
  @pet = Pet.new(pet_params)

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
  @pets = Pet.find_by_owner(params[:dni])
end

def edit
  @pet = Pet.find(params[:id])
end

def update
  @pet = Pet.find(params[:id])

  if @pet.update(pet_params)
    redirect_to @pet
  else
    render 'edit'
  end
end

def destroy
  @pet = Pet.find(params[:id])
  @pet.destroy

  redirect_to pet_path
end

private
  def pet_params
    params.require(:pet).permit(:name, :age, :owner, :alive, :sex, :type, :picture)
  end
end
