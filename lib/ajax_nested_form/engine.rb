require 'rails'
module AjaxNestedForm  
  class Engine < ::Rails::Engine
    initializer 'ajax_nested_form-helpers', :group => :all do |app|
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, AjaxNestedForm::Helpers::ViewHelper        
      end
    end
  end
end