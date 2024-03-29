class BuyersController < ApplicationController
  # GET /buyers
  # GET /buyers.xml
  def index
    @buyers = Buyer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @buyers }
      format.json { render :json => @buyers }
    end
  end

  # GET /buyers/1
  # GET /buyers/1.xml
  def show
    @buyer = Buyer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @buyer }
    end
  end

  # GET /buyers/new
  # GET /buyers/new.xml
  def new
    @buyer = Buyer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @buyer }
    end
  end

  # GET /buyers/1/edit
  def edit
    @buyer = Buyer.find(params[:id])
  end

  # POST /buyers
  # POST /buyers.xml
  def create
    @buyer = Buyer.new(params[:buyer])

    respond_to do |format|
      if @buyer.save
        format.html { redirect_to(@buyer, :notice => 'Buyer was successfully created.') }
        format.xml  { render :xml => @buyer, :status => :created, :location => @buyer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @buyer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /buyers/1
  # PUT /buyers/1.xml
  def update
    @buyer = Buyer.find(params[:id])

    respond_to do |format|
      if @buyer.update_attributes(params[:buyer])
        format.html { redirect_to(@buyer, :notice => 'Buyer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @buyer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /buyers/1
  # DELETE /buyers/1.xml
  def destroy
    @buyer = Buyer.find(params[:id])
    @buyer.destroy

    respond_to do |format|
      format.html { redirect_to(buyers_url) }
      format.xml  { head :ok }
    end
  end

  # GET /buyers/1/cashout
  # GET /buyers/1/cashout.xml
  def cashout 
    @buyer = Buyer.find(params[:id])
    @auction_items = @buyer.auction_items
    @total = @buyer.auction_items.sum('sellprice')
    @taxes = @buyer.auction_items.where(:taxable => true).sum('sellprice') * 0.06; 
    @final_total = @total + @taxes

    respond_to do |format|
      format.html # cashout.html.erb
      format.xml  { render :xml => @auction_items }
    end
  end

   # GET /buyers/1/here
  # GET /buyers/1/here.xml
  def here
    @buyer = Buyer.find(params[:id])
    if @buyer.here 
       @buyer.here = false
    else 
	@buyer.here = true
    end 
    @buyer.save
    repsond_to do |format|
      format.html # index.html.erb
      format.xml  { head :ok }
      format.json { head :ok }
    end
  end
end
