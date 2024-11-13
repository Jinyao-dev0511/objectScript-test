Class ObjectScript.Examples14
{

ClassMethod Conversions()
{
    write !, "abcde becomes: ", $translate("abcde", "ad", "yz")  // translate a->y, and d->z
    write !, "abcde becomes: ", $translate("abcde", "ad", "zz")  // translate a->z, and d->z
    write !, "abcde becomes: ", $translate("abcde", "ad", "z")   // translate a->z, and d->nothing
    write !, "abcdebcbc becomes: ", $translate("abcdebcbc", "abc", "yz")  // translate a->y, b->z, and c->nothing
    write !, "abcdebcbc becomes: ", $replace("abcdebcbc", "abc", "yz")    // replace abc->yz

    read !, "String to translate: ", x
    set lower = "abcdefghijklmnopqrstuvwxyz"
    set upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    write !, "Using $translate: ", $translate(x, lower,  upper)
    write !, "Using $zconvert: ", $zconvert(x, "U")
    write !, "Using $zconvert for capitalizing words: ", $zconvert(x, "W")
    write !, "Using $zstrip to remove whitespace: ", $zstrip(x, "*W")
}

}
