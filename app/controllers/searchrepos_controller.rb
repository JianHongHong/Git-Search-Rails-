class SearchreposController < ApplicationController
  before_action :set_searchrepo, only: [:show, :edit, :update, :destroy]

  # GET /searchrepos
  # GET /searchrepos.json
  def index
    if params[:search]
      # call model to get api using search parameters
      @searchrepo = Searchrepo.new.find(params[:search])
      respond_to do |format|
        # partial formatting of webpage
        format.js { render partial: 'search-results'}
      end
    end
  end
end