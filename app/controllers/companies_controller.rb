class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  layout false
  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

   def credential
     @check=Company.allwhere(params[:company][:companyemail],params[:company][:password]).count
   respond_to do |format|
    if @check>=1
      session[:comapanyemail]=params[:company][:companyemail]
      session[:password]=params[:company][:password]
      format.html { redirect_to candidatereports_url, notice: 'Login Successful.' }
    else
      format.html { redirect_to login_url, notice: 'LoginFailed'  }
      flash[:error] = "Invalid Login"
    end
    end
   end

 def  login
    render "login"
 end

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        UserNotifier.send_signup_email(@company).deliver_now
        format.html { redirect_to signup_url, notice: 'Company was successfully created.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { redirect_to signup_url}
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:companyname, :companyaddress, :contactperson, :contactnumber,:companyemail,:password,:password_confirmation)
    end
end
