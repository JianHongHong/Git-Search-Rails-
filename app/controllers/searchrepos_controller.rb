class SearchreposController < ApplicationController
  before_action :set_searchrepo, only: [:show, :edit, :update, :destroy]

  # GET /searchrepos
  # GET /searchrepos.json
  def index
    # @searchrepo = searchrepo.find("Nugit")
    @searchrepo = Searchrepo.new.find('Nugit')
  end

  # GET /searchrepos/1
  # GET /searchrepos/1.json
  def show
  end

  # Searching for repos
  # def search()
  
  # end

  # GET /searchrepos/new
  def new
    @searchrepo = Searchrepo.new
  end

  # GET /searchrepos/1/edit
  def edit
  end

  # POST /searchrepos
  # POST /searchrepos.json
  def create
    @searchrepo = Searchrepo.new(searchrepo_params)

    respond_to do |format|
      if @searchrepo.save
        format.html { redirect_to @searchrepo, notice: 'Searchrepo was successfully created.' }
        format.json { render :show, status: :created, location: @searchrepo }
      else
        format.html { render :new }
        format.json { render json: @searchrepo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /searchrepos/1
  # PATCH/PUT /searchrepos/1.json
  def update
    respond_to do |format|
      if @searchrepo.update(searchrepo_params)
        format.html { redirect_to @searchrepo, notice: 'Searchrepo was successfully updated.' }
        format.json { render :show, status: :ok, location: @searchrepo }
      else
        format.html { render :edit }
        format.json { render json: @searchrepo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searchrepos/1
  # DELETE /searchrepos/1.json
  def destroy
    @searchrepo.destroy
    respond_to do |format|
      format.html { redirect_to searchrepos_url, notice: 'Searchrepo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_searchrepo
      @searchrepo = Searchrepo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def searchrepo_params
      params.require(:searchrepo).permit(:title, :body, :date)
    end
end
