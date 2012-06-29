class TinypostsController < ApplicationController
  # GET /tinyposts
  # GET /tinyposts.json
  def index
    @tinyposts = Tinypost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tinyposts }
    end
  end

  # GET /tinyposts/1
  # GET /tinyposts/1.json
  def show
    @tinypost = Tinypost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tinypost }
    end
  end

  # GET /tinyposts/new
  # GET /tinyposts/new.json
  def new
    @tinypost = Tinypost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tinypost }
    end
  end

  # GET /tinyposts/1/edit
  def edit
    @tinypost = Tinypost.find(params[:id])
  end

  # POST /tinyposts
  # POST /tinyposts.json
  def create
    @tinypost = Tinypost.new(params[:tinypost])

    respond_to do |format|
      if @tinypost.save
        format.html { redirect_to @tinypost, notice: 'Tinypost was successfully created.' }
        format.json { render json: @tinypost, status: :created, location: @tinypost }
      else
        format.html { render action: "new" }
        format.json { render json: @tinypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tinyposts/1
  # PUT /tinyposts/1.json
  def update
    @tinypost = Tinypost.find(params[:id])

    respond_to do |format|
      if @tinypost.update_attributes(params[:tinypost])
        format.html { redirect_to @tinypost, notice: 'Tinypost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tinypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tinyposts/1
  # DELETE /tinyposts/1.json
  def destroy
    @tinypost = Tinypost.find(params[:id])
    @tinypost.destroy

    respond_to do |format|
      format.html { redirect_to tinyposts_url }
      format.json { head :no_content }
    end
  end
end
