class AlertLogsController < ApplicationController
  before_action :set_alert_log, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /alert_logs
  # GET /alert_logs.json
  def index
    @alert_logs = AlertLog.all
  end

  # GET /alert_logs/1
  # GET /alert_logs/1.json
  def show
    binding.pry
    parsed = JSON.parse @alert_log.message
    @beautifiedJson = JSON.pretty_generate parsed
  end

  # GET /alert_logs/new
  def new
    @alert_log = AlertLog.new
  end

  # GET /alert_logs/1/edit
  def edit
  end

  # POST /alert_logs
  # POST /alert_logs.json
  def create
    @alert_log = AlertLog.new({ message: params.to_json })

    respond_to do |format|
      if @alert_log.save
        format.html { redirect_to @alert_log, notice: 'Alert log was successfully created.' }
        format.json { render :show, status: :created, location: @alert_log }
      else
        format.html { render :new }
        format.json { render json: @alert_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alert_logs/1
  # PATCH/PUT /alert_logs/1.json
  def update
    respond_to do |format|
      if @alert_log.update(alert_log_params)
        format.html { redirect_to @alert_log, notice: 'Alert log was successfully updated.' }
        format.json { render :show, status: :ok, location: @alert_log }
      else
        format.html { render :edit }
        format.json { render json: @alert_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alert_logs/1
  # DELETE /alert_logs/1.json
  def destroy
    @alert_log.destroy
    respond_to do |format|
      format.html { redirect_to alert_logs_url, notice: 'Alert log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alert_log
      @alert_log = AlertLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alert_log_params
      params.fetch(:alert_log, {})
    end
end
