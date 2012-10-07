module Bogie
  module Generators
    class ModelGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)
      
      def add_legacy_model
        template "legacy_model.erb", "app/models/legacy/legacy_#{file_name}.rb"
      end
    end
  end
end