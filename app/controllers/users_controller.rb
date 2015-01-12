class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @addr = @user.addrs.new
  end

  def new
    @user = User.new
  end

  def create_addr
    @user = User.find(params[:user_id])
    @addr = @user.addrs.new(params[:addr])

    if @user.save
      redirect_to @user
    end
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to @user
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update_attributes(params[:user])
      redirect_to @user
    end
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      redirect_to @user
    end
  end
end
