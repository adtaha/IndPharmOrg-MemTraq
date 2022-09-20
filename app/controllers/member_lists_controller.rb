class MemberListsController < ApplicationController
  before_action :set_member_list, only: %i[ show edit update destroy ]

  # GET /member_lists or /member_lists.json
  def index
    @member_lists = MemberList.all
  end

  # GET /member_lists/1 or /member_lists/1.json
  def show
  end

  # GET /member_lists/new
  def new
    @member_list = MemberList.new
  end

  # GET /member_lists/1/edit
  def edit
  end

  # POST /member_lists or /member_lists.json
  def create
    @member_list = MemberList.new(member_list_params)

    respond_to do |format|
      if @member_list.save
        format.html { redirect_to member_list_url(@member_list), notice: "Member list was successfully created." }
        format.json { render :show, status: :created, location: @member_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @member_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_lists/1 or /member_lists/1.json
  def update
    respond_to do |format|
      if @member_list.update(member_list_params)
        format.html { redirect_to member_list_url(@member_list), notice: "Member list was successfully updated." }
        format.json { render :show, status: :ok, location: @member_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @member_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_lists/1 or /member_lists/1.json
  def destroy
    @member_list.destroy

    respond_to do |format|
      format.html { redirect_to member_lists_url, notice: "Member list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_list
      @member_list = MemberList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_list_params
      params.require(:member_list).permit(:memberListID, :memberID)
    end
end
