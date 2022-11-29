class CurrentMembersController < ApplicationController
     before_action :set_current_member, only: %i[show edit update destroy]

     # GET /current_members or /current_members.json
     def index
          @q = CurrentMember.ransack(params[:q])
          @current_members = @q.result(distinct: true)
     end

     # GET /current_members/1 or /current_members/1.json
     def show; end

     # GET /current_members/new
     def new
          @current_member = CurrentMember.new
     end

     # GET /current_members/1/edit
     def edit; end

     # POST /current_members or /current_members.json
     def create
          @current_member = CurrentMember.new(current_member_params)

          respond_to do |format|
               if @current_member.save
                    format.html { redirect_to(current_member_url(@current_member), notice: 'Current member was successfully created.') }
                    format.json { render(:show, status: :created, location: @current_member) }
               else
                    format.html { render(:new, status: :unprocessable_entity) }
                    format.json { render(json: @current_member.errors, status: :unprocessable_entity) }
               end
          end
     end

     # PATCH/PUT /current_members/1 or /current_members/1.json
     def update
          respond_to do |format|
               if @current_member.update(current_member_params)
                    format.html { redirect_to(current_member_url(@current_member), notice: 'Current member was successfully updated.') }
                    format.json { render(:show, status: :ok, location: @current_member) }
               else
                    format.html { render(:edit, status: :unprocessable_entity) }
                    format.json { render(json: @current_member.errors, status: :unprocessable_entity) }
               end
          end
     end

     # DELETE /current_members/1 or /current_members/1.json
     def destroy
          @current_member.destroy

          respond_to do |format|
               format.html { redirect_to(current_members_url, notice: 'Current member was successfully destroyed.') }
               format.json { head(:no_content) }
          end
     end

     private

     # Use callbacks to share common setup or constraints between actions.
     def set_current_member
          @current_member = CurrentMember.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def current_member_params
          params.require(:current_member).permit(:memberID, :name, :email, :isAdmin, :isAlumni)
     end
end
