class MainController < ApplicationController

  def home
    @pets = Pet.libres
  end

  def tienda
    @latitude = 0.360105
    @longitude = -78.112994
  end

  def dashboard
    if current_user.permissions == 1
      @pets = Pet.all
    else
      @pets = Pet.libres
    end
  end
end
