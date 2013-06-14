module Bogie
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def add_legacy_adapter
        legacy =<<-LEGACY
\n
# Connect to the legacy database
legacy:
  adapter: mysql2
  encoding: utf8
  reconnect: false
  database: legacy_database_name
  pool: 5
  username: root
  password:
  host: localhost
LEGACY
        append_file 'config/database.yml', legacy
      end

      def add_legacy_base_class
        copy_file "legacy_base.rb", "app/legacy/legacy_base.rb"
      end
    end
  end
end