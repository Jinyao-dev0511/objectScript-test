Class ObjectScript.Examples
{

/// root for my favorite team
ClassMethod Root()
{
    read "Team: ", t
    if (t = "") { quit }  // stop execution if no team is specified
    if (t = "METS") {
        write !, "Go METS!" }
    else {
        write !, "Boo ", t, "!" }
}

}
