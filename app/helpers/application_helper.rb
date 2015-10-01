module ApplicationHelper
	# Returns the full title on a per-page basis.
	def full_title(page_title)
		base_title = "Rubysite"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
	def nav_url(page_name)
		url_for(controller: 'static_pages',
				action: page_name,
				only_path: true)
	end
	def nav_list
		[
			["home","Home"],
			["help","Help"],
			["about","About"],
			["contact","Contact Us"]
		]
	end
end
