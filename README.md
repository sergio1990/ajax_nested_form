AjaxNestedForm
==============

This gem provides adding and removing nested model fields dynamically through JavaScript using jQuery. It may using for Rails 3.1+ with assets pipeline

Installation
------------

Add this line to your application's Gemfile:

    gem 'ajax_nested_form'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ajax_nested_form

Usage
-----

### Javascript
	
Add necessary javascript file to app/assets/javascripts/application.js

``` javascript
//= require ajax_nested_form
```

### Using ActionView helper methods

For creating link to add nested model fields use next syntax

``` ruby
link_to_add_fields "LinkText", form_builder_instance, :association_name, "container_for_adding_fields", "position_for_adding"
```

Available positions for adding are "first" and "last". Last is used by default.

Sample

``` ruby
link_to_add_fields "Add list", f, :lists, "#lists-container", "first"
```

For creating link to destroy nested model fields use following code

``` ruby
link_to_remove_fields "Remove", form_builder_instance, "nested_model_fields_container"
```

Sample

``` ruby
link_to_remove_fields "Remove", f, ".list-fields"
```

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
