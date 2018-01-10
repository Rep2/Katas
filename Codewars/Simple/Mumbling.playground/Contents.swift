func accum(_ s: String) -> String {
    return s
//        .characters // Swift 3
        .enumerated()
        .map { value in
            return String(value.element).uppercased() +
                String(repeating: String(value.element).lowercased(), count: value.offset)
        }.joined(separator: "-")
}

let test1 = accum("abcd")
assert(test1 == "A-Bb-Ccc-Dddd")

let test2 = accum("RqaEzty")
assert(test2 == "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")

let test3 = accum("cwAt")
assert(test3 == "C-Ww-Aaa-Tttt")
