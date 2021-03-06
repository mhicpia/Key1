class KeysController < ApplicationController
  before_action :set_key, only: [:show, :edit, :update, :destroy]

   # GET /keys
  # GET /keys.json
  def index
    #@keys = Key.all
    # Get keys for ransack
    fac_keys = Key.where('facility = ?', session[:facility])
    @q = fac_keys.search(params[:q]) 
    @keys = @q.result.page(params[:page]).per(15)

    # @totNumber = Key.all.count
    @totNumber = fac_keys.count
    @searchNumber = @q.result.count  
  
    # Generate the 2d array needed for grouped select in view
    @grouped_options = ForSelect.GroupedSelect(session[:facility], 'company', ForSelect) 
    @grouped_options2 = ForSelect.GroupedSelect('9999','facility', ForSelect)

    respond_to do |format|
      format.html { render action: 'index' }
      format.js {}
    end
 end

  # GET /keys/1
  # GET /keys/1.json
  def show
  end

  # GET /keys/new
  def new
    @key = Key.new
    #session[:facility] = '0038'

    # Generate the 2d array needed for grouped select in view
    @grouped_options = ForSelect.GroupedSelect(session[:facility],'company', ForSelect) 
    @grouped_options2 = ForSelect.GroupedSelect('9999','facility', ForSelect)

    respond_to do |format|
      format.html { render action: 'new' }
      format.js { render "new_edit" }
    end
   end

  # GET /keys/1/edit
  def edit
     # Generate the 2d array needed for grouped select in view
    @grouped_options = ForSelect.GroupedSelect(session[:facility],'company', ForSelect) 
    @grouped_options2 = ForSelect.GroupedSelect('9999','facility', ForSelect)

    respond_to do |format|
      format.html { render action: 'edit' }
      format.js { render "new_edit" }
    end
  end

  # POST /keys
  # POST /keys.json
  def create
    @key = Key.new(key_params)

    respond_to do |format|
      if @key.save
        format.html { redirect_to @key, notice: 'Key was successfully created.' }
        format.js {render "update_create"}
        format.json { render action: 'show', status: :created, location: @key }
      else
        format.html { render action: 'new' }
        format.json { render json: @key.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keys/1
  # PATCH/PUT /keys/1.json
  def update
    respond_to do |format|
      if @key.update(key_params)
        @q = Key.search(params[:q])
        @keys = @q.result.page(params[:page]).per(15)

        if session[:role] == 'admin2'
          @q = Key.search(params[:q])  
          @keys = @q.result.page(params[:page]).per(15)
          # @totNumber = Key.all.count
          # @searchNumber = @q.result.count     
        else 
          # Get keys for ransack
          #session[:facility] = '0038'
          fac_keys = Key.where('facility = ?', session[:facility])
          @q = fac_keys.search(params[:q]) 
          @keys = @q.result.page(params[:page]).per(15)
          # @totNumber = fac_keys.count
          # @searchNumber = @q.result.count  
        end

        format.html { redirect_to @key, notice: 'Key was successfully updated.' }
        format.js { render "update_create" }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @key.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keys/1
  # DELETE /keys/1.json
  def destroy
    @key.destroy
    respond_to do |format|
      format.html { redirect_to keys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_key
      @key = Key.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def key_params
      params.require(:key).permit(:description, :number, :facility, :company, :checkout, :checkin)
    end
end
