module AjaxNestedForm
	module Helpers
		module ViewHelper

			def link_to_remove_fields(name, f, container, html_options = {})
			  f.hidden_field(:_destroy) + link_to_function(name, "AjaxNestedForm.removeFields(this, \"#{container}\")".html_safe, html_options)
			end

			def link_to_add_fields(name, f, association, container, position = "last", html_options = {})
				new_object = f.object.class.reflect_on_association(association).klass.new
				fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
				  render(association.to_s.singularize + "_fields", :f => builder)
				end
				link_to_function(name, "AjaxNestedForm.addFields(this, \"#{association}\", \"#{escape_javascript(fields)}\", \"#{container}\", \"#{position}\")".html_safe, html_options)
			end

		end
	end
end