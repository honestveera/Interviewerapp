class CandidatedetailsController < ApplicationController
  before_action :set_candidatedetail, only: [:show, :edit, :update, :destroy]
  before_action :authenticate
  respond_to :json, :html

   def authenticate
     if ((session[:companyemail]||session[:password]=="")||((session[:companyemail]||session[:password])==nil))
        redirect_to root_url
     end
   end
  # GET /candidatedetails
  # GET /candidatedetails.json
  def index
    @candidatedetails = Candidatedetail.all
  end

  def  search
    candidateid=params[:id]
    @detail=Candidatedetail.candidatedetail(candidateid)
    respond_with(@detail, :include => :status)
  end

  # GET /candidatedetails/1
  # GET /candidatedetails/1.json
  # def show
  # end

  # GET /candidatedetails/new
  def new
    @candidatedetail = Candidatedetail.new
  end

  # GET /candidatedetails/1/edit
  def edit
  end

  # POST /candidatedetails
  # POST /candidatedetails.json
  def create
    @candidatedetail = Candidatedetail.new(candidatedetail_params)

    respond_to do |format|
      if @candidatedetail.save
        format.html { redirect_to candidateentry_url, notice: 'Candidatedetail was successfully created.' }
        format.json { render :show, status: :created, location: @candidatedetail }
      else
        format.html { render :new }
        format.json { render json: @candidatedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candidatedetails/1
  # PATCH/PUT /candidatedetails/1.json
  def update
    respond_to do |format|
      if @candidatedetail.update(candidatedetail_params)
        format.html { redirect_to @candidatedetail, notice: 'Candidatedetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @candidatedetail }
      else
        format.html { render :edit }
        format.json { render json: @candidatedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidatedetails/1
  # DELETE /candidatedetails/1.json
  def destroy
    @candidatedetail.destroy
    respond_to do |format|
      format.html { redirect_to candidatedetails_url, notice: 'Candidatedetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidatedetail
      @candidatedetail = Candidatedetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidatedetail_params
      params.require(:candidatedetail).permit(:candidatename, :candidateemail, :candidatecontact, :yoe, :jobtitle,:primaryskills,:secondaryskills,:otherskills,:primaryskills_id,:secondaryskills_id,:otherskills_id,:attachedfile,:status,:previouscompany)
    end
end
