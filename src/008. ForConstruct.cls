/// examples for ObjectScript Tutorial
Class ObjectScript.Examples8
{

/// demos of the For construct
ClassMethod For()
{
    for i = 1:1:8 {
        write !, "I ", i, " the sandbox."
    }
    write !!
    for b = "John", "Paul", "George", "Ringo" {
        write !, "Was ", b, " the leader? "
        read yn
    }
    write !!
    for i = 1:1 {
        read !, "Capital of MA? ", a
        if (a = "BOSTON") {
            write "...did it in ", i, " tries"
            quit
        }
    }
    write !!
    for i = 1:1 {
        read !, "Capital of TX? ", a
        continue:(a '= "AUSTIN")
        write "...did it in ", i, " tries"
        quit
    }
    write !!
    for {
        read !, "Know what? ", wh
        quit:(wh = "NO!")
        write "   That's what!"
    }
}

}
