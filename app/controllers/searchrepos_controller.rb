class SearchreposController < ApplicationController
  before_action :set_searchrepo, only: [:show, :edit, :update, :destroy]

  # GET /searchrepos
  # GET /searchrepos.json
  def index
    @searchrepo = Searchrepo.new.find("Nugit")
  end

  def search
    if params[:search]
      @searchrepo = Searchrepo.new.find(params[:search])
      render :controller => 'searchrepos', :action => 'index'
      # respond_to do |format|
      #   format.js { render partial: 'search-results'}
      # end
    end
  end

end