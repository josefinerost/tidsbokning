class StaticPagesController < ApplicationController
  def home
    @message = "David är bäst!"
  end
end
