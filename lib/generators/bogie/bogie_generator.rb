class BogieGenerator < Rails::Generators::Base
  source_root File.expand_path('../', __FILE__)
  
  def show_usage
    readme "USAGE" if behavior == :invoke
  end
end
