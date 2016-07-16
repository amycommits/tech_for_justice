# All static pages
class StaticContentController < ApplicationController
  layout 'static'

  def about
    render :about
  end

  def contact
    render :contact
  end
end
