defmodule M do
    
    IO.puts "Hello! Please enter 'M.pagi(a,b)' 
    where 
    'a' is the total pages of Front Matter; 
    'b' is the total pages of the book (without Front Matter)."

    def pagi(fm,body) do 
        # Main pupose of col_imp_v2.ex is to see if we can code a more elegant/shorter solution
        # As far as possible, v2 uses the same variable naming as v1

        fm_pagi = Range.new(1,fm)
            |>IO.inspect()

        body_pagi = Range.new(1,body) 
            |>IO.inspect()

        pagination = Enum.concat([fm_pagi,body_pagi])
            |>Enum.chunk_every(32)
        IO.inspect [pagination], charlists: :as_lists

    end    
end