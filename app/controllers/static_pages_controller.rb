class StaticPagesController < ApplicationController
  def help
  end

  def contact
    render Html:'welcome in contact section '
  end

  def login
  end
end
