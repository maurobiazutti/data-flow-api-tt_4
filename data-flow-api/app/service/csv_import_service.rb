require 'csv'

class CsvImportService
  def initialize(file)
    @file = file
  end

  def call 
    # show_id,type,title,director,cast,country,date_added,release_year,rating,duration,listed_in,description
    CSV.foreach(@file.path, headers: true) do |row|
      Movie.find_or_create_by!(show_id: row["show_id"]) do |movie|
        movie.content_type = row["type"]
        movie.title = row["title"]
        movie.director = row["director"]
        movie.cast = row["cast"]
        movie.country = row["country"]
        movie.date_added = row["date_added"]
        movie.release_year = row["release_year"]
        movie.rating = row["rating"]
        movie.duration = row["duration"]
        movie.listed_in = row["listed_in"]
        movie.description = row["description"]
      end
    end
  end
end