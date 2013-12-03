class PlateAccountsController < ApplicationController
  before_action :set_plate_account, only: [:show, :edit, :update, :destroy]

  # GET /plate_accounts
  # GET /plate_accounts.json
  def index
    @plate_accounts = PlateAccount.all
  end

  # GET /plate_accounts/1
  # GET /plate_accounts/1.json
  def show
  end

  # GET /plate_accounts/new
  def new
    @plate_account = PlateAccount.new
  end

  # GET /plate_accounts/1/edit
  def edit
  end

  # POST /plate_accounts
  # POST /plate_accounts.json
  def create
    @plate_account = PlateAccount.new(plate_account_params)

    respond_to do |format|
      if @plate_account.save
        format.html { redirect_to @plate_account, notice: 'Plate account was successfully created.' }
        format.json { render action: 'show', status: :created, location: @plate_account }
      else
        format.html { render action: 'new' }
        format.json { render json: @plate_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plate_accounts/1
  # PATCH/PUT /plate_accounts/1.json
  def update
    respond_to do |format|
      if @plate_account.update(plate_account_params)
        format.html { redirect_to @plate_account, notice: 'Plate account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @plate_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plate_accounts/1
  # DELETE /plate_accounts/1.json
  def destroy
    @plate_account.destroy
    respond_to do |format|
      format.html { redirect_to plate_accounts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plate_account
      @plate_account = PlateAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plate_account_params
      params.require(:plate_account).permit(:state, :plate_num, :email, :name)
    end
end
