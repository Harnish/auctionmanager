class OrganizationMembersController < ApplicationController
  # GET /organization_members
  # GET /organization_members.xml
  def index
    @organization_members = OrganizationMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @organization_members }
    end
  end

  # GET /organization_members/1
  # GET /organization_members/1.xml
  def show
    @organization_member = OrganizationMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @organization_member }
    end
  end

  # GET /organization_members/new
  # GET /organization_members/new.xml
  def new
    @organization_member = OrganizationMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @organization_member }
    end
  end

  # GET /organization_members/1/edit
  def edit
    @organization_member = OrganizationMember.find(params[:id])
  end

  # POST /organization_members
  # POST /organization_members.xml
  def create
    @organization_member = OrganizationMember.new(params[:organization_member])

    respond_to do |format|
      if @organization_member.save
        format.html { redirect_to(@organization_member, :notice => 'Organization member was successfully created.') }
        format.xml  { render :xml => @organization_member, :status => :created, :location => @organization_member }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @organization_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /organization_members/1
  # PUT /organization_members/1.xml
  def update
    @organization_member = OrganizationMember.find(params[:id])

    respond_to do |format|
      if @organization_member.update_attributes(params[:organization_member])
        format.html { redirect_to(@organization_member, :notice => 'Organization member was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @organization_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_members/1
  # DELETE /organization_members/1.xml
  def destroy
    @organization_member = OrganizationMember.find(params[:id])
    @organization_member.destroy

    respond_to do |format|
      format.html { redirect_to(organization_members_url) }
      format.xml  { head :ok }
    end
  end
end
