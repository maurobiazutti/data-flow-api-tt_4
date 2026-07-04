require 'csv'

class CsvImportService
  def initialize(file)
    @file = file
  end

  def call 
    rows = []
    CSV.foreach(@file, headers: true) do |row|
      rows << row.to_h
    end
    JSON.pretty_generate(rows)
  end
end