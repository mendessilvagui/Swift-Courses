import UIKit

enum ErrorCode {
    case fileNotExist
    case notAuthorized
    case invalidName
}

enum FileSystemError: Error {
    case invalidFileName(String)
}

class FileSystem {
    
    func copyContent(source: String, destination: String) {
        
        /*
        let errorCode = open(filename: source)
        if errorCode == .fileNotExist {
            
        } else if errorCode == .invalidName {
            
        }
        */
        
        do {
            try open(filename: source)
        } catch FileSystemError.invalidFileName(let errorMessage) {
            print(errorMessage)
        } catch {
            print(error.localizedDescription)
        }
        // copying the content
    }
    
    private func open(filename: String) throws {
        if filename.isEmpty {
            throw FileSystemError.invalidFileName("Filename is invalid or empty!")
        }
    }
    
    /*
    private func open(filename: String) -> ErrorCode {
        if filename.isEmpty {
            return .invalidName
        } else if filename.starts(with: "ABC") {
            return .notAuthorized
        } else {
            return .fileNotExist
        }
    }
    */
}
