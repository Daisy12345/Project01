class AccountsController < ApplicationController
before_action :set_account, only: [:show, :edit, :update, :destroy]

  def index
    authorize
    @accounts = Account.all
  	@branches = Branch.all
  	@customers = Customer.all
  end

  def home
    @branches = Branch.all
    @accounts = Account.all
  end

  def show
    @branch = Branch.find(@account.branch_id)
    @customer = Customer.find(@account.customer_id)
  end

  def new
    @account = Account.new
    @customers = Customer.all
    @branches = Branch.all
  end

  def edit
    @customers = Customer.all
    @branches = Branch.all
  end

  def create
    @account = Account.new(account_params)

    respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'Account was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_account
      @account = Account.find(params[:id])
    end

    def account_params
      params.require(:account).permit(:account_number, :balance, :branch_id, :customer_id)
    end
end
