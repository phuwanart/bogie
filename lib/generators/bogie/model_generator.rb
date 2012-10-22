module Bogie
  module Generators
    class ModelGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)
      
      def add_legacy_model
        template "legacy_model.erb", "app/models/legacy/legacy_#{file_name.squish.gsub(' ', '_').gsub('-','_').singularize.classify.underscore}.rb"
      end

      def add_legacy_task
        template "legacy_task.erb", "lib/tasks/legacy_#{file_name.squish.gsub(' ', '_').gsub('-','_').singularize.classify.underscore}.rake"
      end
    end
  end
end