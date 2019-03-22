class PagesController < ApplicationController
  def about
      @success_msg = 'About was triggered!'
      @content = 'This is content comming from the server'
  end

  def contact

  end
end
