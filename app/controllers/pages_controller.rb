class PagesController < ApplicationController
  def home; end
  def privacy; end
  def terms; end
  def mentions_legales; end
  def changelog; end
  def sitemap
    render layout: false, content_type: 'application/xml'
  end
end
