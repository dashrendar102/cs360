class ViolationsController < ApplicationController
  USER, PASSWORD = 'admin', 'password'
  before_action :set_violation, only: [:show, :edit, :update, :destroy]
  before_action :authentication_check, :only => [:destroy]

  # GET /violations
  # GET /violations.json
  def index
    @violations = Violation.all
  end

  # GET /violations/1
  # GET /violations/1.json
  def show
  end

  # GET /violations/new
  def new
    @violation = Violation.new
  end

  # GET /violations/1/edit
  def edit
  end

  # POST /violations
  # POST /violations.json
  def create
    @violation = Violation.new(violation_params)

    respond_to do |format|
      if @violation.save
      	registrations = Registration.where(:plateNum => @violation.plateNum, :state => @violation.plateState)
      	registrations.each do |r|
      	
      	  Notifier.violation(r,@violation).deliver
      	end
      
        format.html { redirect_to @violation, notice: 'Violation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @violation }
      else
        format.html { render action: 'new' }
        format.json { render json: @violation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /violations/1
  # PATCH/PUT /violations/1.json
  def update
    respond_to do |format|
      if @violation.update(violation_params)
        format.html { redirect_to @violation, notice: 'Violation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @violation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /violations/1
  # DELETE /violations/1.json
  def destroy
    @violation.destroy
    respond_to do |format|
      format.html { redirect_to violations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_violation
      @violation = Violation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def violation_params
      params.require(:violation).permit(:plateNum, :plateState, :violationType, :picture, :date)
    end
    
    def authentication_check
    authenticate_or_request_with_http_basic do |user, password|
      user == USER && password == PASSWORD
    end
  end
end
