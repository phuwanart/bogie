require "bogie/version"

module Bogie
  def self.migrate(name, options={})
    unless options[:helper]
      # Grab model to migrate
      model = name.to_s.classify

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
    "Legacy#{model.to_s.gsub(' ', '_').gsub('-','_').camelcase}"
  end

  def self.construct_query(model)
    if ENV['limit'] or ENV['offset'] or ENV['where']
      complete = base(model) + "#{where}#{limit}#{offset}"
    else
      complete = base(model) + ".all"
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
