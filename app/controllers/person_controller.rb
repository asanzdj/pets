class PersonController < ApplicationController
before_action :authorize, only: [:index, :show, :delete, :create, :edit, :new, :update, :destroy]

def index
  @people = Person.all
end

def new
  @person = Person.new
end

def create
  @person = Person.new(person_params)
  if @person.save
    redirect_to action: 'index'
  else
    render 'new'
  end
end

def show
  @person = Person.find(params[:id])
end

def edit
  @person = Person.find(params[:id])
end

def update
  @person = Person.find(params[:id])

  if @person.update(person_params)
    redirect_to action: 'index'
  else
    render 'edit'
  end
end

def destroy
  @person = Person.find(params[:id])
  @person.destroy

  redirect_to action: 'index'
end

private
  def person_params
    params.require(:person).permit(:name, :surname, :dni, :email, :picture, :login)
  end

end
