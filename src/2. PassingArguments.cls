/// examples for ObjectScript Tutorial
Class ObjectScript.Examples
{

/// demo of passing arguments by value and reference
ClassMethod PassingArguments(num As %Numeric)
{
    // pass by value
    set dblnum = ..DoubleByVal(num)
    write !, "By Value: ", num, " doubled is: ", dblnum

    // num passed IN and OUT by reference
    write !, "By Reference 1: ", num
    do ..DoubleByRef1(.num)
    write " doubled is: ", num

    // num passed IN by value, result passed OUT by reference
    do ..DoubleByRef2(num, .result)
    write !, "By Reference 2: ", num, " doubled again is: ", result
}

ClassMethod DoubleByVal(anynumber As %Numeric) As %Numeric
{
    return anynumber * 2
}

ClassMethod DoubleByRef1(ByRef anynumber As %Numeric)
{
    set anynumber = anynumber * 2
}

ClassMethod DoubleByRef2(anynumber As %Numeric, Output retnumber As %Numeric)
{
    set retnumber = anynumber * 2
}

}
