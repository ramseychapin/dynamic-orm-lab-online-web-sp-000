require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  self.table_name
    self.to_s.downcase.pluralize
  end

  def self.column_names
    DB[:conn].results_as_hash = true
  end


end
