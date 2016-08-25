class CandidateprofilesController < ApplicationController
  before_action :set_candidateprofile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate
  respond_to :json, :html


   def authenticate
     if ((session[:companyemail]||session[:password]=="")||((session[:companyemail]||session[:password])==nil))
        redirect_to root_url
     end
   end
  # GET /candidateprofiles
  # GET /candidateprofiles.json
  def index
    @candidateprofiles = Candidateprofile.all
  end

  def schedulereport
    @candidateprofiles = Candidateprofile.all
  end

  def  search
    candidatescheduleid=params[:id]
    @schedule=Candidateprofile.candidateprofile(candidatescheduleid)
    respond_with(@schedule, :include => :status)
  end
  # GET /candidateprofiles/1
  # GET /candidateprofiles/1.json
  def show
  end

  # GET /candidateprofiles/new
  def new
    @candidateprofile = Candidateprofile.new
  end

  # GET /candidateprofiles/1/edit
  def edit
  end

  # POST /candidateprofiles
  # POST /candidateprofiles.json
  def create
    @candidateprofile = Candidateprofile.new(candidateprofile_params)

    respond_to do |format|
      if @candidateprofile.save
        Candidateprofile.updateprofilestatus(params[:identity])
        ExampleMailer.sample_email(@candidateprofile).deliver_now
        format.html { redirect_to candidateschedule_url, notice: 'Candidateprofile was successfully created.' }
        format.json { render :show, status: :created, location: @candidateprofile }
      else
        format.html { render :new }
        format.json { render json: @candidateprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candidateprofiles/1
  # PATCH/PUT /candidateprofiles/1.json
  def update
    respond_to do |format|
      if @candidateprofile.update(candidateprofile_params)
        ExampleMailer.sample_email_update(@candidateprofile).deliver_now
        format.html { redirect_to candidateschedule_url, notice: 'Candidateprofile was successfully updated.' }
        format.json { render :show, status: :ok, location: @candidateprofile }
      else
        format.html { render :edit }
        format.json { render json: @candidateprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidateprofiles/1
  # DELETE /candidateprofiles/1.json
  def destroy
    @candidateprofile.destroy
    respond_to do |format|
      format.html { redirect_to candidateprofiles_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidateprofile
      @candidateprofile = Candidateprofile.find(params[:id])
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def candidateprofile_params
      params.require(:candidateprofile).permit(:candidatename, :candidateemail, :candidatecontact, :skills, :YOE, :interviewername, :intervieweremail, :scheduledate, :scheduletime,:jobtitle,:jobdescription,:candidatedetail_id,:status,:previouscompany)
    end
end
