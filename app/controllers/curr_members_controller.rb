class CurrMembersController < ApplicationController
  before_action :set_curr_member, only: %i[ show edit update destroy ]

  # GET /curr_members or /curr_members.json
  def index
    @curr_members = CurrMember.all
  end

  # GET /curr_members/1 or /curr_members/1.json
  def show
  end

  # GET /curr_members/new
  def new
    @curr_member = CurrMember.new
  end

  # GET /curr_members/1/edit
  def edit
  end

  # POST /curr_members or /curr_members.json
  def create
    @curr_member = CurrMember.new(curr_member_params)

    respond_to do |format|
      if @curr_member.save
        format.html { redirect_to curr_member_url(@curr_member), notice: "Curr member was successfully created." }
        format.json { render :show, status: :created, location: @curr_member }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @curr_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curr_members/1 or /curr_members/1.json
  def update
    respond_to do |format|
      if @curr_member.update(curr_member_params)
        format.html { redirect_to curr_member_url(@curr_member), notice: "Curr member was successfully updated." }
        format.json { render :show, status: :ok, location: @curr_member }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @curr_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curr_members/1 or /curr_members/1.json
  def destroy
    @curr_member.destroy

    respond_to do |format|
      format.html { redirect_to curr_members_url, notice: "Curr member was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curr_member
      @curr_member = CurrMember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def curr_member_params
      params.require(:curr_member).permit(:studentID, :name, :email)
    end
end
