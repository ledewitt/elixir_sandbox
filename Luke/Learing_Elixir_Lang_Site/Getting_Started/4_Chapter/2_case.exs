iex(4)> hd(1)
** (ArgumentError) argument error
    :erlang.hd(1)

iex(4)> case 1 do
...(4)> x when hd(x) -> "Won't match"
...(4)> x -> "Got #{x}"
...(4)> end
"Got 1"

iex(5)> case [1,2,3] do              
...(5)> x when hd(x) -> "Won't match"
...(5)> x -> "Got #{x}"              
...(5)> end                          
<<71, 111, 116, 32, 1, 2, 3>>

iex(9)> case [1,2,3] do              
...(9)> x when hd(x) -> IO.puts("Won't match")
...(9)> x -> "Got #{x}"                       
...(9)> end                                   
<<71, 111, 116, 32, 1, 2, 3>>

iex(13)> case [1,2,3] do                          
...(13)> x when hd(x)==1 -> IO.puts("Head of list is 1")
...(13)> x -> "Got #{x}"                                
...(13)> end                                            
Head of list is 1
:ok