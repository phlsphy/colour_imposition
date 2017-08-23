defmodule M do
    def main do 
        # ask for inputs
        # ask for total page extent
        total_page = IO.gets("What is the total number of pages in the book? ") |> String.trim
        IO.puts "Page Extent: #{total_page}pp."

        # add function to calculate if divisble by 4.

        # ask for (only) front matter page extent
        front_matter = IO.gets("How many pages of Front Matter? ") |> String.trim
        IO.puts "Front matter extent: #{front_matter}pp."
    end    

    def array do 
        # create the list/array of pages
        # pagination = new(1, 12) | function "new" doesn't work - error: undefined
        # try Enum next
        IO.puts "Pages: #{pagination}"
    end
end