/// examples for ObjectScript Tutorial
Class ObjectScript.Examples11
{

/// examples of JSON
ClassMethod JSON()
{
    // create a JSON object
    set jo1 = {"PartNum":"678LM", "Price":"7.99", "Quantity":"100"}
    // create a JSON array, and add it to the object
    set ar1 = ["Small","Large"], jo1.Sizes = ar1
    // change a size in the 0-based JSON array
    set ar1."0" = "Tiny"
    // turn the JSON into a string and display it
    set string1 = jo1.%ToJSON()
    write !, "First JSON object: ", !, string1
    
    // create a text string in JSON format
    set string2 = "{""PartNum"":""345JK"", ""Price"":5.99, ""Sizes"":[""Small"", ""Medium"", ""Large""], ""Quantity"":50}"
    // create an object from the string
    set jo2 = ##class(%DynamicObject).%FromJSON(string2)
    // display the properties of the object
    write !!, "Second JSON Object:"
    write !, "Part Number: ", jo2.PartNum, " Price: ", jo2.Price, " Quantity: ", jo2.Quantity
    write !, "Sizes"
    // loop through the array using an iterator
    set ar2 = jo2.Sizes
    set iter = ar2.%GetIterator()
        while iter.%GetNext(.key , .value ) {
            write !, ?5, "Key: ", key, ", Size: ", value
       }
       
    // change some of the properties
    set jo2.Price = "8.99", jo2.Quantity = 75
    // push a new size onto the end of the array
    do ar2.%Push("Extra Large")
    // turn the JSON into a string and display it
    write !!, "Changed Second JSON Object:"
    set newstring = jo2.%ToJSON()
    write !, newstring
}

}
