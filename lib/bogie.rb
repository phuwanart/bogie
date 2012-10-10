require "bogie/version"
require 'ruby-progressbar'

module Bogie
  def self.version_string
    "Bogie version #{Bogie::VERSION}"
  end

  def self.run(name, options={})
    unless options[:helper]
      # Grab model to migrate
      model = base(name)

      ENV['limit'] = options[:limit].to_s unless ENV['limit']
      ENV['offset'] = options[:offset].to_s unless ENV['offset']
      ENV['where'] = options[:where].to_s unless ENV['where']

      records = query(model)
      if records.size > 0
        progressbar = ProgressBar.create(:total => records.size)
        records.each do |record|
          progressbar.increment
          record.migrate
        end
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
    if ENV['limit'].blank? && ENV['offset'].blank? && ENV['where'].blank?
      complete = "#{legacy_base(model)}.all"
    else
      complete = "#{legacy_base(model)}#{where}#{limit}#{offset}"
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
