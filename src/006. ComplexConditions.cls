/// examples for ObjectScript Tutorial
Class ObjectScript.Examples6
{

/// demos of many Ifs
ClassMethod If()
{
    set x = 5, y = 0, z = -5
    if (x = 5) {write !, "x is equal to 5"} else {write !, "false"}
    if (x = 10) {write !, "x is equal to 10"} else {write !, "false"}
    if (x < y) {write !, "x is less than y"} else {write !, "false"}
    if (x > y) {write !, "x is greater than y"} else {write !, "false"}
    write !
    if (##class(%SYSTEM.Util).NumberOfCPUs() > 2) {write !, "there are more than 2 CPUs"} else {write !, "false"}
    if (x > $zsqr(64)) {write !, "x is greater than square root of 64"} else {write !, "false"}
    write !
    if (x && y) {write !, "both x and y are true (non-zero)"} else {write !, "false"}
    if (x && z) {write !, "both x and z are true (non-zero)"} else {write !, "false"}
    if (x && y && z) {write !, "x, y, and z are all true (non-zero)"} else {write !, "false"}
    if (x || y || z) {write !, "at least one of x, y, or z is true (non-zero)"} else {write !, "false"}
    write !
    if ((x > y) || (y < z)) {write !, "either x is greater than y OR y is less than z"} else {write !, "false"}
    if (x > y || y < z) {write !, "without proper parentheses, this expression is false"} else {write !, "false"}
    if ((x > y) && (z < y)) {write !, "x is greater than y AND z is less than y"} else {write !, "false"}
    if (x > y && z < y) {write !, "without proper parentheses, this expression is also false"} else {write !, "false"}
    write !
    if 'x {write !, "x is not true (zero)"} else {write !, "false"}
    if 'y {write !, "y is not true (zero)"} else {write !, "false"}
    if (x '< y) {write !, "x is not less than y"} else {write !, "false"}
    if '(x < y) {write !, "x is not less than y"} else {write !, "false"}
}

}
