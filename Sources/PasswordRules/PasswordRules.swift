public enum PasswordRule {
    public enum CharacterClass {
        case upper
        case lower
        case digits
        case special
        case asciiPrintable
        case unicode
        case custom(Set<Character>)
    }
    
    case required(CharacterClass)
    case allowed(CharacterClass)
    case maxConsecutive(UInt)
    case minLength(UInt)
    case maxLength(UInt)
    
    public static func descriptor(for rules: [PasswordRule]) -> String {
        return rules.map{ "\($0.description);" }.joined(separator: " ")
    }
}

extension PasswordRule: CustomStringConvertible {
    public var description: String {
        switch self {
        case .required(let characterClass):
            return "required: \(characterClass)"
        case .allowed(let characterClass):
            return "allowed: \(characterClass)"
        case .maxConsecutive(let length):
            return "max-consecutive: \(length)"
        case .minLength(let length):
            return "minlength: \(length)"
        case .maxLength(let length):
            return "maxlength: \(length)"
        }
    }
}

extension PasswordRule.CharacterClass: CustomStringConvertible {
    public var description: String {
        switch self {
        case .upper: return "upper"
        case .lower: return "lower"
        case .digits: return "digits"
        case .special: return "special"
        case .asciiPrintable: return "ascii-printable"
        case .unicode: return "unicode"
        case .custom(let characters):
            return "[" + String(characters) + "]"
        }
    }
}
