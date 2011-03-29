class ImagesController < ApplicationController
  def index
    @piece = Piece.find(params[:piece_id])
    @images = @piece.images

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @images }
    end
  end

  def show
    @image = Image.find(params[:id])
    @piece = Piece.find(params[:piece_id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image }
    end
  end

  def new
    @image = Image.new
    @piece = Piece.find(params[:piece_id])
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image }
    end
  end

  def edit
    @image = Image.find(params[:id])
    @piece = Piece.find(params[:piece_id])
  end

  def create
    @image = Image.new(params[:image])
    @piece = Piece.find(params[:piece_id])

    respond_to do |format|
      if @image.save
        format.html { redirect_to([@piece,@image], :notice => 'Image was successfully created.') }
        format.xml  { render :xml => @image, :status => :created, :location => @image }
      else

        format.html { render :action => "new" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @image = Image.find(params[:id])
    @piece = Piece.find(params[:piece_id])
    respond_to do |format|
      if @image.update_attributes(params[:image])
        format.html { redirect_to([@piece, @image], :notice => 'Image was successfully updated.') }
        format.xml  { head :ok }
      else

        format.html { render :action => "edit" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to(images_url) }
      format.xml  { head :ok }
    end
  end
end

