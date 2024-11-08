/// examples for ObjectScript Tutorial
Class ObjectScript.Examples10
{

/// examples of system and custom exceptions
ClassMethod Exceptions(x As %Numeric)
{
    // UNDEFINED error throws a system exception
    try {
        write "Hello!", !, xyz
    }
    catch err {
        write !, "Error name: ", ?20, err.Name,
              !, "Error code: ", ?20, err.Code,
              !, "Error location: ", ?20, err.Location,
              !, "Additional data: ", ?20, err.Data, !
    }

    // DIVIDE error throws a system exception
    try {
        write 1/0
    }
    catch err {
        write !, "Error name: ", ?20, err.Name,
              !, "Error code: ", ?20, err.Code,
              !, "Error location: ", ?20, err.Location,
              !, "Additional data: ", ?20, err.Data, !
    }
    
    // create a simple custom exception object and throw it
    set ex = ##class(%Exception.General).%New()
    set ex.Name = "Demo Exception",
        ex.Code = 100000,
        ex.Data = "Tutorial Example"
    try {
        write !, "Hello!", !
        if (x >= 5) throw ex  // throw the exception
    }
    catch err {
        write !, "Error name: ", ?20, err.Name,
              !, "Error code: ", ?20, err.Code,
              !, "Error location: ", ?20, err.Location,
              !, "Additional data: ", ?20, err.Data, !
        if (x = 5) return  // terminate method
    }
    write !, "Finished!"
}

}
