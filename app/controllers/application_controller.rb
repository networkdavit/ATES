class ApplicationController < ActionController::Base
  helper_method :categories

  def categories
    @categories ||= Category.all
  end
end
