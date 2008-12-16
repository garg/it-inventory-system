class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.find(:all)

    respond_to do |format|
      format.html
    end

  end

  def new
    @manufacturer = Manufacturer.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end
 
  def update
    @manufacturer = Manufacturer.find(params[:id])
  
    respond_to do |format|
      if @manufacturer.update_attributes(params[:manufacturer])

        format.html { redirect_to(:action => :index) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def create
    @manufacturer = Manufacturer.new(params[:manufacturer])
   
    respond_to do |format|
      if @manufacturer.save
        flash[:notice] = 'Manufacturer created successfully'
        format.html { redirect_to(:action=>:index) }
      else
        format.html {render :action => "new" }
      end
    end
  end


  def destroy
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer.destroy

    respond_to do |format|
      format.html { redirect_to(manufacturers_url) }
    end
  end


end
