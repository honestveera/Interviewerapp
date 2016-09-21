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
          rol=Company.allwhere(params[:company][:companyemail],params[:company][:password])
          session[:role]=rol[0].role
          format.html { redirect_to schedulereport_url }
        else
          format.html { redirect_to login_url}
          flash[:error] = "Invalid Email and Password"
        end
    end
   end



 def  login
    render "login"
 end

 def forgotpasswor
     @mailid=Company.password(params[:company][:companyemail]);
    respond_to do |format|
     if @mailid.count >= 1
       UserNotifier.send_forgotpassword(@mailid).deliver_now
       format.html { redirect_to forgotpassword_url, notice: 'Password Send to mail '}
     else
      format.html { redirect_to forgotpassword_url}
      flash[:error] = "Enter Correct Email"
     end
   end
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
      params.require(:company).permit(:companyemail,:password,:password_confirmation,:role)
    end
end
