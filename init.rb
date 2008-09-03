require File.dirname(__FILE__) + '/lib/default_templates.rb'
ActionController::Base.send :include, ActionController::DefaultTemplates
