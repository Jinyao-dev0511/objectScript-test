/// examples for ObjectScript Tutorial
/// Bug: It doesn't work because of no data.
Class ObjectScript.Examples13
{

/// loop through last names of the ^PersonI global, 2 different ways
ClassMethod SimpleLoop()
{
    write !, "Using argumentless For"
    set ln = ""  // initialize to the empty string to make $Order return the first last name
    for {        // start looping
        set ln = $order(^PersonI("Name", ln))  // use the current last name to get the next
        quit:(ln = "")                         // stop looping when ln becomes empty again
        write !, ?5, ln
    }
    
    write !!, "Using While"
    set ln = $order(^PersonI("Name", ""))  // get the first last name
    while (ln '= "") {                     // only loop if there is at least one last name
        write !, ?5, ln
        set ln = $order(^PersonI("Name", ln))  // use the current last name to get the next
    }
}

}
