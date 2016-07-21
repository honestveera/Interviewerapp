class ScheduletimesController < ApplicationController
  before_action :set_scheduletime, only: [:show, :edit, :update, :destroy]

  # GET /scheduletimes
  # GET /scheduletimes.json
  def index
    @scheduletimes = Scheduletime.all
  end

  # GET /scheduletimes/1
  # GET /scheduletimes/1.json
  def show
  end

  # GET /scheduletimes/new
  def new
    @scheduletime = Scheduletime.new
  end

  # GET /scheduletimes/1/edit
  def edit
  end

  # POST /scheduletimes
  # POST /scheduletimes.json
  def create
    @scheduletime = Scheduletime.new(scheduletime_params)

    respond_to do |format|
      if @scheduletime.save
        format.html { redirect_to @scheduletime, notice: 'Scheduletime was successfully created.' }
        format.json { render :show, status: :created, location: @scheduletime }
      else
        format.html { render :new }
        format.json { render json: @scheduletime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scheduletimes/1
  # PATCH/PUT /scheduletimes/1.json
  def update
    respond_to do |format|
      if @scheduletime.update(scheduletime_params)
        format.html { redirect_to @scheduletime, notice: 'Scheduletime was successfully updated.' }
        format.json { render :show, status: :ok, location: @scheduletime }
      else
        format.html { render :edit }
        format.json { render json: @scheduletime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scheduletimes/1
  # DELETE /scheduletimes/1.json
  def destroy
    @scheduletime.destroy
    respond_to do |format|
      format.html { redirect_to scheduletimes_url, notice: 'Scheduletime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheduletime
      @scheduletime = Scheduletime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scheduletime_params
      params.require(:scheduletime).permit(:scheduletime)
    end
end
