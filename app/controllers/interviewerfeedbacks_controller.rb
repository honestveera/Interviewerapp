class InterviewerfeedbacksController < ApplicationController
  before_action :set_interviewerfeedback, only: [:show, :edit, :update, :destroy]

  # GET /interviewerfeedbacks
  # GET /interviewerfeedbacks.json
  def index
    @interviewerfeedbacks = Interviewerfeedback.all
  end

  # GET /interviewerfeedbacks/1
  # GET /interviewerfeedbacks/1.json
  def show
  end

  # GET /interviewerfeedbacks/new
  def new
    @interviewerfeedback = Interviewerfeedback.new
  end

  # GET /interviewerfeedbacks/1/edit
  def edit
  end

  # POST /interviewerfeedbacks
  # POST /interviewerfeedbacks.json
  def create
    @interviewerfeedback = Interviewerfeedback.new(interviewerfeedback_params)

    respond_to do |format|
      if @interviewerfeedback.save
        format.html { redirect_to interviewerfeed_url, notice: 'Interviewerfeedback was successfully created.' }
        format.json { render :show, status: :created, location: @interviewerfeedback }
      else
        format.html { render :new }
        format.json { render json: @interviewerfeedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interviewerfeedbacks/1
  # PATCH/PUT /interviewerfeedbacks/1.json
  def update
    respond_to do |format|
      if @interviewerfeedback.update(interviewerfeedback_params)
        format.html { redirect_to @interviewerfeedback, notice: 'Interviewerfeedback was successfully updated.' }
        format.json { render :show, status: :ok, location: @interviewerfeedback }
      else
        format.html { render :edit }
        format.json { render json: @interviewerfeedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interviewerfeedbacks/1
  # DELETE /interviewerfeedbacks/1.json
  def destroy
    @interviewerfeedback.destroy
    respond_to do |format|
      format.html { redirect_to interviewerfeedbacks_url, notice: 'Interviewerfeedback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interviewerfeedback
      @interviewerfeedback = Interviewerfeedback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interviewerfeedback_params
      params.require(:interviewerfeedback).permit(:interviewername, :candidatename,:skills,:feedback, :status)
    end
end
