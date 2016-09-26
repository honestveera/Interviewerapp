class InterviewersController < ApplicationController
  before_action :set_interviewer, only: [:show, :edit, :update, :destroy]
  respond_to :html,:json
  before_action :authenticate,:roleauthentication

  def authenticate
    if ((session[:companyemail]||session[:password]=="")||((session[:companyemail]||session[:password])==nil))
       redirect_to root_url
    end
  end
  def roleauthentication
    redirect_to schedulereport_url if session[:role]=="Recruiter"
  end


  # GET /interviewers
  # GET /interviewers.json
  def index
    @interviewers = Interviewer.all
  end


  def  search
    interviewername=params[:id]
    @detail=Interviewer.interviewerdetail(interviewername)
    respond_with(@detail, :include => :status)
  end

  def  searchinterviewer
    candidateps=params[:primaryskills]
    candidatess=params[:secondaryskills]
    @interviewer=Interviewer.interviewer(candidateps,candidatess)
    respond_with(@interviewer, :include => :status)
  end
  # GET /interviewers/1
  # GET /interviewers/1.json
  def show
  end

  # GET /interviewers/new
  def new
    @interviewer = Interviewer.new
  end

  # GET /interviewers/1/edit
  def edit
  end

  # POST /interviewers
  # POST /interviewers.json
  def create
    @interviewer = Interviewer.new(interviewer_params)

    respond_to do |format|
      if @interviewer.save
        format.html { redirect_to @interviewer, notice: 'Interviewer was successfully created.' }
        format.json { render :show, status: :created, location: @interviewer }
      else
        format.html { render :new }
        format.json { render json: @interviewer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interviewers/1
  # PATCH/PUT /interviewers/1.json
  def update
    respond_to do |format|
      if @interviewer.update(interviewer_params)
        format.html { redirect_to @interviewer, notice: 'Interviewer was successfully updated.' }
        format.json { render :show, status: :ok, location: @interviewer }
      else
        format.html { render :edit }
        format.json { render json: @interviewer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interviewers/1
  # DELETE /interviewers/1.json
  def destroy
    @interviewer.destroy
    respond_to do |format|
      format.html { redirect_to interviewers_url, notice: 'Interviewer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interviewer
      @interviewer = Interviewer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interviewer_params
      params.require(:interviewer).permit(:interviewername, :interviewercompany,:companyemail,:primaryskills,:primaryskills_id,:secondaryskills,:secondaryskills_id,:otherskills)
    end
end
