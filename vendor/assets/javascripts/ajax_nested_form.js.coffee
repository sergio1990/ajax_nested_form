window.AjaxNestedForm = {}

class @AjaxNestedForm

	@removeFields: (link, container) ->
		$(link).prev("input[type=hidden]").value = "1"
		$(link).closest(container).hide()
		return

	@addFields: (link, association, content, container, position) ->
		new_id = new Date().getTime()
		regexp = new RegExp("new_" + association, "g")
		content_new = content.replace(regexp, new_id)
		if position is "first" then $(container).prepend(content_new) else $(container).append(content_new)
		return