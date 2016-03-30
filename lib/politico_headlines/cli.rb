class PoliticoHeadlines::CLI
  
  def call
    start
  end

  def list
    puts ""
    puts "************* The Latest U.S. Political Headlines *************"
    puts ""
    PoliticoHeadlines::Headlines.all.each.with_index(1) do |headline, i|
      puts "#{i}. #{headline.title}"
    end
    puts ""
  end

  def print_headline(headline)
    puts ""
    puts "-------------- #{headline.title} --------------"

    puts ""
    puts headline.summary
    puts ""

  end

  def start
    list
    input = nil
    while input != "exit"
      puts ""
      puts "What movie would you more information on, by name or number?"
      puts ""
      puts "Enter list to see the movies again."
      puts "Enter exit to end the program."
      puts ""
      input = gets.strip
      if input == "list"
        list
      elsif input.to_i == 0
        if movie = NowPlaying::Movie.find_by_name(input)
          print_movie(movie)
        end
      elsif input.to_i > 0
        if movie = NowPlaying::Movie.find(input.to_i)
          print_movie(movie)
        end
      end
    end
    puts "Goodbye!!!"
  end
end
