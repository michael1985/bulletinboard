class BulletinsController < ApplicationController

  before_filter :require_user
  before_filter :is_user_owner, :only => [:update, :edit, :destroy]

  # GET /bulletins
  # GET /bulletins.json
  def index
    @bulletins = Bulletin.paginate(:page => params[:page], :per_page => 3)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bulletins }
    end
  end

  # GET /bulletins/1
  # GET /bulletins/1.json
  def show
    @bulletin = Bulletin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bulletin }
    end
  end

  # GET /bulletins/new
  # GET /bulletins/new.json
  def new
    @bulletin = Bulletin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bulletin }
    end
  end

  # GET /bulletins/1/edit
  def edit
    @bulletin = Bulletin.find(params[:id])
  end

  # POST /bulletins
  # POST /bulletins.json
  def create
    @bulletin = Bulletin.new(params[:bulletin])
    @bulletin.user = current_user

    respond_to do |format|
      if @bulletin.save
        format.html { redirect_to @bulletin, notice: 'Bulletin was successfully created.' }
        format.json { render json: @bulletin, status: :created, location: @bulletin }
      else
        format.html { render action: "new" }
        format.json { render json: @bulletin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bulletins/1
  # PUT /bulletins/1.json
  def update
    @bulletin = Bulletin.find(params[:id])
    @bulletin.user = current_user

    respond_to do |format|
      if @bulletin.update_attributes(params[:bulletin])
        format.html { redirect_to @bulletin, notice: 'Bulletin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bulletin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bulletins/1
  # DELETE /bulletins/1.json
  def destroy
    @bulletin = Bulletin.find(params[:id])
    @bulletin.destroy

    respond_to do |format|
      format.html { redirect_to bulletins_url }
      format.json { head :no_content }
    end
  end

private
  def is_user_owner
    unless current_user == Bulletin.find(params[:id]).user
      flash[:notice] = "We didn't find your bulletin"
      redirect_back_or_default new_user_session_url
    end
  end
end
