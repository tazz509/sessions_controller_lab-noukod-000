class SessionsController < ApplicationController
  def new
  end

  def create
    # binding.pry
    name = params[:name]
    if (!name.nil? && name.empty?) or name.nil?
      redirect_to '/login'
    else
      # redirect_to '/login' if
      session[:name] = params[:name]
      redirect_to '/'
    end
       #if params[:name].nil?
  end

  def destroy
    session.delete(:name) unless session[:name].nil?
    redirect_to '/'
  end
end
