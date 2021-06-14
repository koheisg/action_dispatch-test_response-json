require "action_dispatch/test_response/json/version"
require "nokogiri"

ActionDispatch::Response.module_eval do
  def json
    @json ||= JSON.parse(body, symbolize_names: true)
  end

  def html
    @html ||= Nokogiri::HTML(body)
  end
end
