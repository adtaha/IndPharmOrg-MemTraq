class MemberOrgsController < ApplicationController
     before_action :set_member_org, only: %i[show edit update destroy]

     # GET /member_orgs or /member_orgs.json
     def index
          @q = MemberOrg.ransack(params[:q])
          @member_orgs = @q.result(distinct: true)
     end

     # GET /member_orgs/1 or /member_orgs/1.json
     def show; end

     # GET /member_orgs/new
     def new
          @member_org = MemberOrg.new
     end

     # GET /member_orgs/1/edit
     def edit; end

     # POST /member_orgs or /member_orgs.json
     def create
          @member_org = MemberOrg.new(member_org_params)

          respond_to do |format|
               if @member_org.save
                    format.html { redirect_to(member_org_url(@member_org), notice: 'Member org was successfully created.') }
                    format.json { render(:show, status: :created, location: @member_org) }
               else
                    format.html { render(:new, status: :unprocessable_entity) }
                    format.json { render(json: @member_org.errors, status: :unprocessable_entity) }
               end
          end
     end

     # PATCH/PUT /member_orgs/1 or /member_orgs/1.json
     def update
          respond_to do |format|
               if @member_org.update(member_org_params)
                    format.html { redirect_to(member_org_url(@member_org), notice: 'Member org was successfully updated.') }
                    format.json { render(:show, status: :ok, location: @member_org) }
               else
                    format.html { render(:edit, status: :unprocessable_entity) }
                    format.json { render(json: @member_org.errors, status: :unprocessable_entity) }
               end
          end
     end

     # DELETE /member_orgs/1 or /member_orgs/1.json
     def destroy
          @member_org.destroy

          respond_to do |format|
               format.html { redirect_to(member_orgs_url, notice: 'Member org was successfully destroyed.') }
               format.json { head(:no_content) }
          end
     end

     private

     # Use callbacks to share common setup or constraints between actions.
     def set_member_org
          @member_org = MemberOrg.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def member_org_params
          params.require(:member_org).permit(:memberOrgID, :memberID, :organizationID)
     end
end
