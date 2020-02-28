class SearchreposController < ApplicationController
  before_action :set_searchrepo, only: [:show, :edit, :update, :destroy]

  # GET /searchrepos
  # GET /searchrepos.json
  def index
    if params[:search]
      # @searchrepo = Searchrepo.new.find("Nugit")
      tmp = params[:search]
      @searchrepo = Searchrepo.new.find(tmp)
      # respond_to do |format|
      #   format.js { render partial: 'search-results'}
      end
    # end
  end


end
