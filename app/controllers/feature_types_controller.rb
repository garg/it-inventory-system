class FeatureTypesController < ApplicationController
  # GET /feature_types
  # GET /feature_types.xml
  def index
    @feature_types = FeatureType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feature_types }
    end
  end

  # GET /feature_types/1
  # GET /feature_types/1.xml
  def show
    @feature_type = FeatureType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feature_type }
    end
  end

  # GET /feature_types/new
  # GET /feature_types/new.xml
  def new
    @feature_type = FeatureType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feature_type }
    end
  end

  # GET /feature_types/1/edit
  def edit
    @feature_type = FeatureType.find(params[:id])
  end

  # POST /feature_types
  # POST /feature_types.xml
  def create
    @feature_type = FeatureType.new(params[:feature_type])

    respond_to do |format|
      if @feature_type.save
        flash[:notice] = 'FeatureType was successfully created.'
        format.html { redirect_to(@feature_type) }
        format.xml  { render :xml => @feature_type, :status => :created, :location => @feature_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feature_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /feature_types/1
  # PUT /feature_types/1.xml
  def update
    @feature_type = FeatureType.find(params[:id])

    respond_to do |format|
      if @feature_type.update_attributes(params[:feature_type])
        flash[:notice] = 'FeatureType was successfully updated.'
        format.html { redirect_to(@feature_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feature_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /feature_types/1
  # DELETE /feature_types/1.xml
  def destroy
    @feature_type = FeatureType.find(params[:id])
    @feature_type.destroy

    respond_to do |format|
      format.html { redirect_to(feature_types_url) }
      format.xml  { head :ok }
    end
  end
end
