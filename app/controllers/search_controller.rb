class SearchController < ApplicationController
  def index 
    @jobs = Search.new.execute(query: params[:query])
  end
end
