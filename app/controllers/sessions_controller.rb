class SessionsController < ApplicationController
  # before_action :display_welcome, except: [:index]
  def new
  end

  def login
  end

  def create
    teacher = Teacher.find_by_email(params[:email])
    if teacher
      session[:id] = teacher.id
      teacher.authenticate(params[:password])
      redirect_to parents_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_path, notice: "You have logged out."
  end

  # private def display_welcome
  #   session[:teacher] = Teacher.find(params[:id]).name
  # end

end
