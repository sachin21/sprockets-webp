# encoding: utf-8

module Sprockets
  module WebP
    class Railtie < ::Rails::Railtie
      initializer :webp, group: :all do |app|
        app.config.assets.configure do |env|
          env.register_mime_type 'image/jpeg', extensions: %w[.jpeg .jpg]
          env.register_postprocessor 'image/jpeg', Converter.new

          env.register_mime_type 'image/png', extensions: %w[.png]
          env.register_postprocessor 'image/png', Converter.new
        end
      end
    end
  end
end
