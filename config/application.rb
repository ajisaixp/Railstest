require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Railstest
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # デフォルトのlocaleを日本語(:ja)にする
    config.i18n.default_locale = :ja
    # 日本メインで、英語でも読めるようにする設定
    # config.i18n.available_locales = [:ja, :en]
    # 以下の記述を追記する(設定必須)
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

    config.time_zone = 'Tokyo'
    config.active_record.time_zone_aware_types = [:datetime, :time]

    config.assets.initialize_on_precompile = false

    # ここを追加
    # Settings for generators
    config.generators do |g|
      g.stylesheets false       # 自動生成させない場合に false を設定します
      g.javascripts false
      g.helper false
    end
  end
end
