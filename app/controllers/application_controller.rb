class ApplicationController < ActionController::Base
  
  def test 
    render html: 'main index function in application controller '
  end
  
  def index
  end
end
