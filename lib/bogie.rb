require "bogie/version"
require 'ruby-progressbar'

module Bogie
  def self.run(name, options={})
    unless options[:helper]
      # Grab model to migrate
      model = base(name)
      
      query(model).each do |record|
        record.migrate
      end
    else
      eval options[:helper].to_s
    end
  end

  def self.query(model)
    eval construct_query(model)
  end

  def self.base(model)
    "#{model.to_s.gsub(' ', '_').gsub('-','_').camelcase.classify}"
  end

  def self.legacy_base(model)
    "Legacy#{base(model)}"
  end

  def self.construct_query(model)
    if ENV['limit'] or ENV['offset'] or ENV['where']
      complete = "#{legacy_base(model)}#{where}#{limit}#{offset}"
    else
      complete = "#{legacy_base(model)}.all"
    end
    complete
  end

  def self.batch(method)
    nil || ".#{method}(#{ENV[method]})" unless ENV[method].blank?
  end

  def self.where
    batch("where")
  end

  def self.limit
    batch("limit")
  end

  def self.offset
    batch("offset")
  end
end
