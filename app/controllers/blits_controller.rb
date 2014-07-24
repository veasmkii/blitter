class BlitsController < ApplicationController
  # GET /blits
  # GET /blits.json
  def index
   # @blits = Blit.all
    @blits = Blit.order(:created)   
 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blits }
    end
  end

  # GET /blits/1
  # GET /blits/1.json
  def show
    @blit = Blit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blit }
    end
  end

  # GET /blits/new
  # GET /blits/new.json
  def new
    @blit = Blit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blit }
    end
  end

  # GET /blits/1/edit
  def edit
    @blit = Blit.find(params[:id])
  end

  # POST /blits
  # POST /blits.json
  def create
    @blit = Blit.new(params[:blit])

    respond_to do |format|
      if @blit.save
        format.html { redirect_to @blit, notice: 'Blit was successfully created.' }
        format.json { render json: @blit, status: :created, location: @blit }
      else
        format.html { render action: "new" }
        format.json { render json: @blit.errors, status: :unprocessable_entity }
      end
    end
    
    @blit.created = Time.now
    @blit.save
  end

  # PUT /blits/1
  # PUT /blits/1.json
  def update
    @blit = Blit.find(params[:id])

    respond_to do |format|
      if @blit.update_attributes(params[:blit])
        format.html { redirect_to @blit, notice: 'Blit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blit.errors, status: :unprocessable_entity }
      end
    end

   @blit.created = Time.now
   @blit.save

  end

  # DELETE /blits/1
  # DELETE /blits/1.json
  def destroy
    @blit = Blit.find(params[:id])
    @blit.destroy

    respond_to do |format|
      format.html { redirect_to blits_url }
      format.json { head :no_content }
    end
  end
end
