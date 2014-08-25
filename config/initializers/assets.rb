# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( jquery.alerts/images/title.gif )
Rails.application.config.assets.precompile += %w( jquery.alerts/images/info.gif )
Rails.application.config.assets.precompile += %w( jquery.alerts/images/important.gif )
Rails.application.config.assets.precompile += %w( jquery.alerts/images/help.gif )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
