class AuctionTablesController < ApplicationController
  # GET /auction_tables
  # GET /auction_tables.xml
  def index
    @auction_tables = AuctionTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @auction_tables }
    end
  end

  # GET /auction_tables/1
  # GET /auction_tables/1.xml
  def show
    @auction_table = AuctionTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @auction_table }
    end
  end

  # GET /auction_tables/new
  # GET /auction_tables/new.xml
  def new
    @auction_table = AuctionTable.new
    @auction_id = session[:auction_id]
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @auction_table }
    end
  end

  # GET /auction_tables/1/edit
  def edit
    @auction_table = AuctionTable.find(params[:id])
  end

  # POST /auction_tables
  # POST /auction_tables.xml
  def create
    @auction_table = AuctionTable.new(params[:auction_table])

    respond_to do |format|
      if @auction_table.save
        format.html { redirect_to(@auction_table, :notice => 'Auction table was successfully created.') }
        format.xml  { render :xml => @auction_table, :status => :created, :location => @auction_table }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @auction_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /auction_tables/1
  # PUT /auction_tables/1.xml
  def update
    @auction_table = AuctionTable.find(params[:id])

    respond_to do |format|
      if @auction_table.update_attributes(params[:auction_table])
        format.html { redirect_to(@auction_table, :notice => 'Auction table was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @auction_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /auction_tables/1
  # DELETE /auction_tables/1.xml
  def destroy
    @auction_table = AuctionTable.find(params[:id])
    @auction_table.destroy

    respond_to do |format|
      format.html { redirect_to(auction_tables_url) }
      format.xml  { head :ok }
    end
  end

  # GET /auction_tables/1/closetable
  # GET /auction_tables/1/closetable.xml
  def closetable 
    @auction_table = AuctionTable.find(params[:id])
    #@auction_items = @auction_table.AuctionItems
 
    respond_to do |format|
      format.html # closetable.html.erb
      format.xml  { render :xml => @auction_items }
      format.json { render :json => @auction_items }
    end
  end
end
