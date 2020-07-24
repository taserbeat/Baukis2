Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# app/assets/stylesheetフォルダのプリコンパイル対象を設定する
Rails.application.config.assets.precompile += %w[staff.css admin.css customer.css]
