-- Problem:
-- For each node in BST, classify it as 'Root', 'Leaf', or 'Inner' based on tree structure.

select N ,
            case 
                when P is null then 'Root'
                when N in (select P from BST) then 'Inner'
                else 'Leaf' 
            end
from BST
order by N