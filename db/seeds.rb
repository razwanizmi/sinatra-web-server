require_relative '../app/models/url'

class UrlImporter
  def self.import(filename)
    file = File.open(filename)
    Url.transaction do
      file.each_line do |row|
        Url.connection.execute "INSERT INTO urls (long_url) VALUES ('#{row[1..-4]}')"
      end
    end
  end
end

# class UrlImporter
#   def self.import(filename)
#     csv = File.open(filename)
#     csv.each_line do |row|
#       Url.create(long_url: row[1..-4])
#     end
#   end
# end

UrlImporter.import('db/data/urls.txt')