class HomeController < ApplicationController
  def index
    @author = Author.first
  end
end
