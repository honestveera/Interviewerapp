class CalendersController < ApplicationController
  before_action :set_calender, only: [:show, :edit, :update, :destroy]
  before_action :authenticate,:roleauthentication
  respond_to :html,:json
  # GET /calenders
  # GET /calenders.json

  def authenticate
    if ((session[:companyemail]||session[:password]=="")||((session[:companyemail]||session[:password])==nil))
       redirect_to root_url
    end
  end

  def roleauthentication
    redirect_to schedulereport_url if session[:role]=="Recruiter"
  end

  def index
    @calenders = Calender.all
  end

  def  search
    interviewernameid=params[:interviewer_id]
    date=params[:dateformat]
    status="new"
    @detail=Calender.calender(interviewernameid,date,status)
    respond_with(@detail, :include => :status)
  end

  def  searchinterviewer
    candidateps=params[:primaryskills_id]
    candidatess=params[:secondaryskills_id]
    status="new"
    date=params[:dateformat]
    @interviewer=Calender.interviewer(candidateps,candidatess,status,date)
    respond_with(@interviewer, :include => :status)
  end

  # GET /calenders/1
  # GET /calenders/1.json
  def show
  end

  # GET /calenders/newi
  def new
    @calender = Calender.new
  end

  # GET /calenders/1/edit
  def edit

  end

  # POST /calenders
  # POST /calenders.json
  def create
    @interviewer=Interviewer.all
    @interviewer.each do |interviewer|
        params[:calender][:interviewername] = interviewer.interviewername
        params[:calender][:interviewer_id] = interviewer.id
        params[:calender][:primaryskills_id]=interviewer.primaryskills_id
        params[:calender][:secondaryskills_id]=interviewer.secondaryskills_id
        params[:calender][:timeslot]=params["interviewer_#{interviewer.id}"].to_s
        count=Calender.where(interviewer_id:interviewer.id,dateformat:params[:calender][:dateformat]).count;
        @calender = Calender.new(params.require(:calender).permit(:dateformat, :timeslot, :interviewername,:interviewer_id,:status,:primaryskills_id,:secondaryskills_id))
        @calender.save if (params[:calender][:timeslot]!="")&&(count!=1)
    end
    redirect_to calenders_url
  end

  # PATCH/PUT /calenders/1
  # PATCH/PUT /calenders/1.json
  def update
    respond_to do |format|
      interviewer=Calender.find_by(:interviewer_id=>"#{@calender.interviewer_id}",:dateformat=>"#{@calender.dateformat}")
      params[:calender][:interviewer_id] = interviewer.interviewer_id
      params[:calender][:primaryskills_id]=interviewer.primaryskills_id
      params[:calender][:secondaryskills_id]=interviewer.secondaryskills_id
      params[:calender][:timeslot]=params["interviewer_#{interviewer.id}"].to_s
      if @calender.update(params.require(:calender).permit(:dateformat, :timeslot, :interviewername,:interviewer_id,:status,:primaryskills_id,:secondaryskills_id))
        format.html { redirect_to @calender, notice: 'Calender was successfully updated.' }
        format.json { render :show, status: :ok, location: @calender }
      else
        format.html { render :edit }
        format.json { render json: @calender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calenders/1
  # DELETE /calenders/1.json
  def destroy
    @calender.destroy
    respond_to do |format|
      format.html { redirect_to calenders_url, notice: 'Calender was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calender
      @calender = Calender.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calender_params
      params.require(:calender).permit(:dateformat, :timeslot, :interviewername,:interviewer_id,:status,:primaryskills_id,:secondaryskills_id)
    end
end
