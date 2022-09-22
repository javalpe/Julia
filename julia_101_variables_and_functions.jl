# The word reserved 'struct' allows you to define a variable that contains different types
struct Language
    name::String
    title::String
    year_of_birth::Int64
    fast::Bool
end

# The word reserved 'fieldnames' shows you a previous variable declared with different types
fieldnames(Language)

# The symbol '!' before a boolean type means the true-false value
!true

# The symbol '&&' means 'AND' and '||' means 'OR'
(false&&true)||(!false)

# The word reserved 'isa' means a boolean validation refered to type validation
(6 isa Int64) && (6 isa Real)

# The symbol '==' means 'EQUALS TO'
1 == 1

# The symbol '>=' means 'MORE OR EQUALS TO'
1 >= 10

# The symbol '!=' means 'DIFFERENT TO'
(1 != 10) || (3.14 <= 2.71)

#=
To declare function type 'function' and follow the next instructions:
    1.- Name the function avoiding word reserved
    2.- If you need parameters put them next to the name between parenthesis () and using commas ','
    3.- You can declare intermediate calculations assigned to temporal variables with '='
    4.- Finally, declare 'return' to indicate the respond to this function
    Note: Julia generates the word 'end' inmediately after you declare a function
=#

function pythagoras_with_julia(a,b)
    base_powers_2 = a^2
    height_powers_2 = b^2
    hypotenuse_powers_2 = base_powers_2+height_powers_2
    hypotenuse_root = sqrt(hypotenuse_powers_2)
    return hypotenuse_root
end

pythagoras_with_julia(7,24)

# You can also declare fucntion with multiple returns separated with commas ','
function adding_multiply(a,b)
    sum_ab = a+b
    prod_ab = a*b
    return sum_ab,prod_ab
end

adding_multiply(1,2)

# If you only need one of the multiple returns, first declare two or more variables (match with number of returns)
return_1, return_2 = adding_multiply(1,2)
return_2

# Julia allows to shows last element of a multiple function return
all_returns = adding_multiply(1,2)
last(all_returns)

#= Julia allows to declare keyword arguments after the regular argument
    1.- First declare the regular or positional arguments, you can use '::' to define type
    2.- After that, use the semmicolom ';'
    3.- Now, you can enunciate the keyword argument just naming like the regular arguments
    4.- Also, you can define a value by default using the symbol '='
=#
function logarithm(x::Real; base::Real=2.7182818284590)
    return log(base,x) #log(2,1)=0
end

#=
In the following example we are declaring the positional argument but not the keyword argument
So, the function 'logarithm' assigns the defatult value which is 2.7182818284590
=#
logarithm(2.7182818284590)

#Remember that always you want to declare the keyword argument you must use '='
logarithm(5;base=25)