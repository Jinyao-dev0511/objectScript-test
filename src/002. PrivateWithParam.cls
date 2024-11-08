/// examples for ObjectScript Tutorial
Class ObjectScript.Examples2
{

/// demo of public and private methods, along with a public variable
ClassMethod PrivatePublic()
{
    do ..Private(1, 2, 3, 4)   // call a private method with parameters
    do ..Public(9)             // call a public method
}

/// a private method with parameters
ClassMethod Private(a, b, c, d) [ Private ]
{
    write !, "setting a to ", a
    write !, "setting b to ", b
    write !, "setting c to ", c
    write !, "setting d to ", d
}

/// a public method with an argument and a return value
ClassMethod Public(num As %Numeric) As %String
{
    write !, "my favorite number is ", num
    return "This is my return value!!!"
}

}
