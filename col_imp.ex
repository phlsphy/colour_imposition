defmodule M do
    def main do 
        # inputs
        # ask for total page extent, trims white spaces, convert to integer
        total_page = IO.gets("What is the total number of pages in the book? ") 
            |> String.trim 
            |> String.to_integer
        IO.puts "Page Extent: #{total_page}pp."
        
        # add function to calculate if divisble by 4. Just to make sure.  TBD

        # ask (only) for front matter page extent
        fm = IO.gets("How many pages of Front Matter? ") 
            |> String.trim
            |> String.to_integer
        IO.puts "Front matter extent: #{fm}pp."

        # 
        # concatenate,
        # then paginate,
        fm_pagi = Range.new(1,fm)
            |>IO.inspect()
        body_matter = total_page - fm #<<<<<the problem
            |>Range.new(1,body_matter)
            |>IO.inpsect()

        pagination = fm_pagi ++ body_matter
            |>Enum.chunk_every(32)
        IO.inspect [pagination], charlists: :as_lists 
        
        # -------This below part works -----
        # create a list/array of pages, 
        # split into blocks of 32
        # print using 'inspect' (array is integer; puts is for binary) -> (1..n),
        # convert to list 
        #pagination = Range.new(1,total_page) 
        #    |>Enum.chunk_every(32)
        #IO.inspect [pagination], charlists: :as_lists 
        
        # prints all individual members of list
        #Enum.to_list(pagination)

    end    
end