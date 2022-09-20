class SpeakerListsController < ApplicationController
  before_action :set_speaker_list, only: %i[ show edit update destroy ]

  # GET /speaker_lists or /speaker_lists.json
  def index
    @speaker_lists = SpeakerList.all
  end

  # GET /speaker_lists/1 or /speaker_lists/1.json
  def show
  end

  # GET /speaker_lists/new
  def new
    @speaker_list = SpeakerList.new
  end

  # GET /speaker_lists/1/edit
  def edit
  end

  # POST /speaker_lists or /speaker_lists.json
  def create
    @speaker_list = SpeakerList.new(speaker_list_params)

    respond_to do |format|
      if @speaker_list.save
        format.html { redirect_to speaker_list_url(@speaker_list), notice: "Speaker list was successfully created." }
        format.json { render :show, status: :created, location: @speaker_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @speaker_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speaker_lists/1 or /speaker_lists/1.json
  def update
    respond_to do |format|
      if @speaker_list.update(speaker_list_params)
        format.html { redirect_to speaker_list_url(@speaker_list), notice: "Speaker list was successfully updated." }
        format.json { render :show, status: :ok, location: @speaker_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @speaker_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speaker_lists/1 or /speaker_lists/1.json
  def destroy
    @speaker_list.destroy

    respond_to do |format|
      format.html { redirect_to speaker_lists_url, notice: "Speaker list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speaker_list
      @speaker_list = SpeakerList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def speaker_list_params
      params.require(:speaker_list).permit(:speakerListID, :speakerID)
    end
end
