module scu

pub struct TestStruct {
pub mut:
    testvar int
}

pub fn (test TestStruct) test() {
    println("hi2")
}

pub fn (test TestStruct) print() {
    println("value: " + test.testvar.str())
}

pub fn test() {
    println("hi")
}