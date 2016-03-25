require_relative '../app/models/url'

class UrlImporter
  def self.import(filename)
    csv = File.open(filename)
    csv.each_line do |row|
      Url.create(long_url: row[1..-4])
    end
  end
end

UrlImporter.import('db/data/urls.txt')