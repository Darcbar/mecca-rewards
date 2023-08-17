class AdminController < ApplicationController
  def index
    @stats = Stat.instance
    @clubs = Club.all
  end
end
