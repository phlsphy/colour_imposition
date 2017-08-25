defmodule M do
    def main do 
        # inputs
        # ask for total page extent, trims white spaces, convert to integer
        body = IO.gets("How many pages of body matter? ") 
            |> String.trim 
            |> String.to_integer
        IO.puts "Page Extent (without Front Matter): #{body}pp."
        
        # ask (only) for front matter page extent
        fm = IO.gets("How many pages of Front Matter? ") 
            |> String.trim
            |> String.to_integer
        IO.puts "Front matter extent: #{fm}pp."

        # paginate both fm and bm
        fm_pagi = Range.new(1,fm)
            |>IO.inspect()

        body_pagi = Range.new(1,body) 
            |>IO.inspect()

        # concatenate the two lists. [] are crucial. They are lists!
        # split into blocks of 32
        # | or ++ does not work, creates 2 lists together, cannot chunk.
        Enum.concat([fm_pagi,body_pagi])
            |>Enum.chunk_every(32)

        # print using 'inspect' (array is integer; puts is for binary) -> (1..n),
        # convert to list 
        #IO.inspect [pagination], chatlists: :as_lists
        # prints all individual members of list
        #Enum.to_list(pagination)

    end    
end