class AuctionItemsController < ApplicationController
  # GET /auction_items
  # GET /auction_items.xml
  def index
    @auction_items = AuctionItem.all(:order => "itemnum")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @auction_items }
    end
  end

  # GET /auction_items/1
  # GET /auction_items/1.xml
  def show
    @auction_item = AuctionItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @auction_item }
    end
  end

  # GET /auction_items/new
  # GET /auction_items/new.xml
  def new
    @auction_item = AuctionItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @auction_item }
    end
  end

  # GET /auction_items/1/edit
  def edit
    @auction_item = AuctionItem.find(params[:id])
  end

  # POST /auction_items
  # POST /auction_items.xml
  def create
    @auction_item = AuctionItem.new(params[:auction_item])

    respond_to do |format|
      if @auction_item.save
        format.html { redirect_to(@auction_item, :notice => 'Auction item was successfully created.') }
        format.xml  { render :xml => @auction_item, :status => :created, :location => @auction_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @auction_item.errors, :status => :unprocessable_entity }
      end
    end
  end
  # MGET /auction_items/medit
#  def edit
#    @auction_item = AuctionItem.find(params[:id])
#  end

  # POST /auction_items
  # POST /auction_items.xml
#  def create
#    @auction_item = AuctionItem.All)
#
#    respond_to do |format|
#      if @auction_item.save
#        format.html { redirect_to(@auction_item, :notice => 'Auction item was successfully created.') }
#        format.xml  { render :xml => @auction_item, :status => :created, :location => @auction_item }
#      else
#        format.html { render :action => "new" }
#
#        format.xml  { render :xml => @auction_item.errors, :status => :unprocessable_entity }
#      end
#    end
#  end

  # PUT /auction_items/1
  # PUT /auction_items/1.xml
  def update
    @auction_item = AuctionItem.find(params[:id])

    respond_to do |format|
      if @auction_item.update_attributes(params[:auction_item])
        format.html { redirect_to(@auction_item, :notice => 'Auction item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @auction_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /auction_items/1
  # DELETE /auction_items/1.xml
  def destroy
    @auction_item = AuctionItem.find(params[:id])
    @auction_item.destroy

    respond_to do |format|
      format.html { redirect_to(auction_items_url) }
      format.xml  { head :ok }
    end
  end

  # GET /auction_items/items_for_bidder/1
  # GET /auction_items/items_for_bidder/1.xml
  def items_for_bidder
    @auction_item = AuctionItem.where(["bidderNumber = ?", params[:id]])

    respond_to do |format|
       format.html # items_for_bidder.html.erb
    end 
  end
end
