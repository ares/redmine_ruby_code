require 'redmine'

Redmine::Plugin.register :redmine_ruby_code do
  name 'Redmine Ruby code'
  author 'Marek Hulan'
  description 'Adds a button to commets to wrap ruby highlighted code'
  version '0.0.1'
end

class RedmineRubyCodeListener < Redmine::Hook::ViewListener
  render_on :view_layouts_base_html_head, :inline => <<EOS
<%= javascript_include_tag 'prer', :plugin => 'redmine_ruby_code' %>
<%= stylesheet_link_tag 'prer', :plugin => 'redmine_ruby_code' %>
EOS
end 

