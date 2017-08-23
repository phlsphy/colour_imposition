defmodule M do
    def main do 
        # inputs
        # ask for total page extent, trims white spaces, convert to integer
        total_page = IO.gets("What is the total number of pages in the book? ") |> String.trim |> String.to_integer
        IO.puts "Page Extent: #{total_page}pp."
            
        # add function to calculate if divisble by 4. TBD

        # ask (only) for front matter page extent
        front_matter = IO.gets("How many pages of Front Matter? ") |> String.trim
        IO.puts "Front matter extent: #{front_matter}pp."

        # create a list/array of pages, 
        # prints using 'inspect' (array is integer; puts is for binary) -> (1..n),
        # convert to list
        pagination = Range.new(1,total_page) 
        IO.inspect [pagination], charlists: :as_lists 

        # prints all individual members of list
        Enum.to_list(pagination)

    end    

end