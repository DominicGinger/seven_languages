module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  class CsvRow
    def method_missing(name, *args)
      nil
    end
  end

  module InstanceMethods
    attr_accessor :headers, :csv_contents

    def initialize
      read
      @rows = []
      @headers.each_with_index do |row, i|
        res = @csv_contents.collect { |c| c[i] }
        csv_row = CsvRow.new
        csv_row.define_singleton_method(row, -> { res })
        @rows << csv_row
      end
    end

    def each(&block)
      @rows.each(&block)
    end

    private

    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(',')

      file.each do |row|
        @csv_contents << row.chomp.split(',')
      end
    end
  end
end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

csv = RubyCsv.new
#p m.headers.inspect
#p m.csv_contents.inspect

csv.each { |row| p row.two }
