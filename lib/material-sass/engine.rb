module Material
  module Sass
    class Engine < ::Rails::Engine
      initializer 'material-sass.assets.precompile' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          app.config.assets.paths << root.join('app/assets', sub).to_s
        end
        app.config.assets.precompile << %r(MaterialIcons-Regular\.(?:eot|svg|ttf|woff|woff2?)$)
      end
    end
  end
end
