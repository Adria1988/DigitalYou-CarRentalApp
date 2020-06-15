# frozen_string_literal: true

class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.all
    #json_response(@users)
  end

  def new
    @users = User.new
  end

  # POST /users

  def create
    @user = User.create!(user_params)
    print @user.save ? 'user saved on db' : 'user dont saved on bd'
    #json_response(@user, :created)
    render 'show'
  end

  # GET /users/:id

  def show
    @user = User.find(params[:id])
    #json_response(@user)
  end

  # PUT /user/:id

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
      print @user.save ? 'user edited and saved on db' : 'user dont saved on bd'
    else
      render 'edit'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  # DELETE /user/:id

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/users'
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :city)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
