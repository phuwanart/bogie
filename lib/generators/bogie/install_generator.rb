module Bogie
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def add_legacy_base_class
        copy_file "legacy_base.rb", "app/legacy/legacy_base.rb"
      end
    end
  end
end