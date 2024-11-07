/// examples for ObjectScript Tutorial
Class ObjectScript.Examples1
{

/// demo of public and private methods, along with a public variable
ClassMethod PrivatePublic()
{
    do ..Private()   // call a private method
    do ..Public(9)   // call a public method
}

/// a private method with public variable a
ClassMethod Private() [ Private, PublicList = a ]
{
    write !, "setting a"  set a = 1
    write !, "setting b"  set b = 2
    write !, "setting c"  set c = 3
    write !, "setting d"  set d = 4
}

/// a public method with an argument and a return value
ClassMethod Public(num As %Numeric) As %String
{
    write !, "my favorite number is ", num
    return "This is my return value!!!"
}

}
