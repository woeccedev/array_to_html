require "array_to_html/version"
require "htmlentities"

module ArrayToHtml
  extend self

  def ul(array)
  	list = array.map { |x| tag(:li, escape(x)) }.join
  	tag(:ul, list)
  end

  private
  def tag(element, string)
  	"<#{ element }>#{ string }</#{element }>"
  end

  def tag(element, string)
  	"<#{ element }>#{ string }</#{ element }>"
  end

  def escape(string, entities = :named)
  	coder = HTMLEntities.new
  	coder.encode(string, entities)
  end
  
end
