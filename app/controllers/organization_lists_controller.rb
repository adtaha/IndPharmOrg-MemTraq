class OrganizationListsController < ApplicationController
  before_action :set_organization_list, only: %i[ show edit update destroy ]

  # GET /organization_lists or /organization_lists.json
  def index
    @organization_lists = OrganizationList.all
  end

  # GET /organization_lists/1 or /organization_lists/1.json
  def show
  end

  # GET /organization_lists/new
  def new
    @organization_list = OrganizationList.new
  end

  # GET /organization_lists/1/edit
  def edit
  end

  # POST /organization_lists or /organization_lists.json
  def create
    @organization_list = OrganizationList.new(organization_list_params)

    respond_to do |format|
      if @organization_list.save
        format.html { redirect_to organization_list_url(@organization_list), notice: "Organization list was successfully created." }
        format.json { render :show, status: :created, location: @organization_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organization_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_lists/1 or /organization_lists/1.json
  def update
    respond_to do |format|
      if @organization_list.update(organization_list_params)
        format.html { redirect_to organization_list_url(@organization_list), notice: "Organization list was successfully updated." }
        format.json { render :show, status: :ok, location: @organization_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organization_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_lists/1 or /organization_lists/1.json
  def destroy
    @organization_list.destroy

    respond_to do |format|
      format.html { redirect_to organization_lists_url, notice: "Organization list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_list
      @organization_list = OrganizationList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_list_params
      params.require(:organization_list).permit(:orgListID, :orgID)
    end
end
