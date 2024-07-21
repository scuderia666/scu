import scu { test, TestStruct }

fn main() {
    test()
    mut obj := TestStruct{}
    obj.test()
    obj.testvar = 5
    obj.print()
}