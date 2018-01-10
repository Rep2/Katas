import XCTest

func repeatStr(_ n: Int, _ string: String) -> String {
    guard n > 0 else { return "" }

    return String(repeating: string, count: n)
}

assert(repeatStr(5, "I") == "IIIII")

assert(repeatStr(0, "I") == "")

assert(repeatStr(-10, "I") == "")

assert(repeatStr(3, "asdasda") == "asdasdaasdasdaasdasda")
