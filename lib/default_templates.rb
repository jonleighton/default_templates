require "rubygems"
require "active_support"
require "action_controller"

module ActionController
  module DefaultTemplates
    def self.included(klass)
      klass.send :alias_method_chain, :default_template_name, :default_templates
    end
    
    def default_template_name_with_default_templates(action_name = self.action_name)
      normal_template   = default_template_name_without_default_templates(action_name)
      defaults_template = "defaults/#{action_name}"
      
      if !template_exists?(normal_template) && template_exists?(defaults_template)
        defaults_template
      else
        normal_template
      end
    end
  end
end
