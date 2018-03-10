

def  bubbleSort(array)
  n=array.length
  loop do
    swapped=false

    for i in 1..n
      puts "Estamos en #{i}"
        if (array[i-1].to_i > array[i].to_i)
          swap=array[i-1]
          array[i-1]=array[i]
          array[i]=swap
          swapped=true
        end
    end
    puts array
    break  unless  swapped
  end


end


def bubble_sort_by (array)
  (array.length-1).times do
  		(array.length-1).times do |x|
  			p x
  			@left = array[x]
  			@right = array[x+1]
  			yield
  			if @result > 0
  				swap=array[x]
          array[x] = array[x+1]
          array[x+1]=swap
  			end
  			p array
  		end
  	end
end

#Test

bubble_sort_by(["hi","hello","hey"]) {@result = @left.length - @right.length   }

#Test

#a=[ 5 ,1, 4, 2, 8 ]
#puts a
#bubbleSort(a)

#b=[4,3,78,2,0,2]
#puts b
#bubbleSort(b)
