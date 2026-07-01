import Foundation

func markdownFromSwift(_ source: String) -> String {
    let lines = source.components(separatedBy: .newlines)

    var result = ""
    var i = 0

    while i < lines.count {

        // Look for the start of a multiline comment
        if lines[i].trimmingCharacters(in: .whitespaces) == "/*" {

            // Read the markdown comment
            i += 1
            var markdown: [String] = []

            while i < lines.count &&
                  lines[i].trimmingCharacters(in: .whitespaces) != "*/" {
                markdown.append(lines[i])
                i += 1
            }

            // Skip */
            i += 1

            // Skip blank lines after the comment
            while i < lines.count &&
                  lines[i].trimmingCharacters(in: .whitespaces).isEmpty {
                i += 1
            }

            // Read the Swift code until the next comment or EOF
            var code: [String] = []

            while i < lines.count &&
                  lines[i].trimmingCharacters(in: .whitespaces) != "/*" {
                code.append(lines[i])
                i += 1
            }

            result += markdown.joined(separator: "\n")
                .trimmingCharacters(in: .whitespacesAndNewlines)

            if !code.isEmpty {
                result += "\n\n```swift\n"
                result += code.joined(separator: "\n")
                    .trimmingCharacters(in: .whitespacesAndNewlines)
                result += "\n```\n\n"
            }
        } else {
            i += 1
        }
    }

    return result
}