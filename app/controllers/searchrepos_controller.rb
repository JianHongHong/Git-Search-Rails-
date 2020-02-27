class SearchreposController < ApplicationController
  before_action :set_searchrepo, only: [:show, :edit, :update, :destroy]

  # GET /searchrepos
  # GET /searchrepos.json
  def index
    # @searchrepo = Searchrepo.new.find('Nugit')
  end


  # Searching for repos
  def search()
    @searchrepo = Searchrepo.new.find("nugit")
    unless searchrepo
      flash[:alert] = 'Repository not found'
      return render action: :index
    end
  end

end
