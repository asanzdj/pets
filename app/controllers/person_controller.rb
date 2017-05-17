class PersonController < ApplicationController

def index
  @people = Person.all
end

def new
  @person = Person.new
end

def create
  @person = Person.new(person_params)
  if @person.save
    render 'index'
  else
    render 'new'
  end
end

def show
  @person = Person.find(params[:id])
end

def edit
  @person = Person.find(params[:id])
  render 'index'
end

def update
  @person = Person.find(params[:id])

  if @person.update(person_params)
    redirect_to @person
  else
    render 'edit'
  end
end

def destroy
  @person = Person.find(params[:id])
  @person.destroy

  render 'index'
end

private
  def person_params
    params.require(:person).permit(:name, :surname, :dni, :email, :picture)
  end

end
