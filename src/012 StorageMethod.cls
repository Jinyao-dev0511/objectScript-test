Class ObjectScript.Examples12
{

/// store the data
/// Bug: $listbuild.
/// do ##class(ObjectScript.Examples12).Store("John Doe,555-1234,123456")
ClassMethod Store(answers As %String)
{
    read !, "Store? (y/n): ", yn  // ask if user wants to store
    // only go on if user says yes
    if ((yn '= "y") && (yn '= "Y")) {
        write "...not stored."
        quit
    }

    set id = $increment(^PersonD)  // use $increment to generate a new ID
    set ^PersonD(id) = answers  // store the answers
   
    set $listbuild(name, phone, intdob) = answers
    // split name into last and first for storage in index
    set last = $piece(name, ",", 1), first = $piece(name, ",", 2)

    /* the next three statements store data in subscripts.
       because of the automatic sorting of subscripts,
       this has the effect of building 3 indexes: name, phone, and DOB */
    set ^PersonI("Name", last, first, id) = ""  // index last and first name
    set ^PersonI("Phone", phone) = id           // index the UNIQUE phone
    set ^PersonI("DOB", intdob, id) = ""        // index the internal DOB

    /* these statements turn the id into a "chunk #" and a "position #"
       and set a bit into the bitmap index */
    set chunk = (id\64000) + 1, position = (id#64000) + 1
    set $bit(^PersonI("Bitmap-ID", chunk), position) = 1
    write "...stored"
}

}
