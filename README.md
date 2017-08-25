# colour_imposition

First attempt at coding, ever.

First attempt at Elixir.

A program to calculate a simple multipage book [imposition](http://www.peachpit.com/articles/article.aspx?p=674202&seqNum=3).

Inputs:
* Total page extent
* Front matter page count

Outputs:
* Number of blank pages added (to make it divisble by 4).
* Two columns of imposition, broken into block of 32 pages.
* Preferably in a printable format (PDF?).

Notes:
* Odd error with `Enum.chunk`: If the total page count is 55-118 comes out as alphanumeric+symbols. >119 = OK.
![alt text](/images/55-118.png "Gibberish")