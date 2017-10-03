class StaticPagesController < ApplicationController
  def home
    @message = 'David är bäst!'
  end

  def contact
    @name =  'Börel'
    @email = 'böreljörge@gmail.com'
    @phone = '1234567'
  end
end
