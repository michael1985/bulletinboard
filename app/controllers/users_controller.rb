class UsersController < ApplicationController

  before_filter :require_user, :only => [:update, :edit, :destroy]
  #before_filter :is_user_current_user, :only => [:edit, :update]

  def index

  end

  def new
    @user = User.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def list

  end

  def edit
    @user = current_user
  end

  def update

  end

  def destroy

  end

end
