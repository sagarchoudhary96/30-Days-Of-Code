  func stringToInt(inputString: String) throws -> Int {

    guard let result = Int(inputString) else {
        throw StringToIntTypecastingError.BadString
    }
    return result

}