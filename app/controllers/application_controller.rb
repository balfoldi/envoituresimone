class ApplicationController < ActionController::Base
  before_action :set_rallies

  def set_rallies
    @rallies = Rally.all
  end
end
