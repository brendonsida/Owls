function partition(a,left,right) 
   local pivot = a[right]       -- the value to divide "small" from "large"
   local i = left               -- the start of the large 
   for j = left, right-1 do 
      if a[j] <= pivot          -- a[j] is small 
      then 
         a[i],a[j]              -- swap the small value a[j] 
            = a[j],a[i]         -- with a[i], the first entry  
         i = i+1                -- not already known to be small
      end 
   end 
   a[i],a[right] = a[right],a[i] -- put the pivot at the boundary 
   return i
end 

function quicksort(a,left,right)
   if left < right
   then 
      q = partition(a,left,right)
      quicksort(a,left,q-1)
      quicksort(a,q+1,right)
   end 
end 

function qs(a) 
   quicksort(a,1,#a)
end 

