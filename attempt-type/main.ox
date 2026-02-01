# Attempt<T, E> - errors as values, not exceptions

enum FileError
    NotFound
    PermissionDenied
    IoError
endenum

func read_config(path: str) -> Attempt<str, FileError>
    if path == "config.txt"
        return success("host=localhost\nport=8080")
    elseif path == "secret.txt"
        return failure(FileError::PermissionDenied)
    endif
    return failure(FileError::NotFound)
endfunc

# Handle each case explicitly
print "=== Reading config.txt ==="
result1 = read_config("config.txt")
match result1
    case success(data) => print "Config:", data
    case failure(err) => print "Error loading config"
endmatch

# Handle specific errors
print ""
print "=== Reading missing.txt ==="
result2 = read_config("missing.txt")
match result2
    case success(data) => print "Data:", data
    case failure(FileError::NotFound) =>
        print "File not found - using defaults"
    case failure(FileError::PermissionDenied) =>
        print "Access denied!"
    case failure(_) =>
        print "Unknown error"
endmatch

# Error recovery with fallback
func read_with_fallback(primary: str, fallback: str) -> str
    result = read_config(primary)
    match result
        case success(content) => return content
        case failure(_) =>
            print "Primary failed, trying fallback..."
            fallback_result = read_config(fallback)
            match fallback_result
                case success(content) => return content
                case failure(_) => return "default=true"
            endmatch
    endmatch
endfunc

print ""
print "=== Fallback example ==="
config = read_with_fallback("missing.txt", "config.txt")
print "Got config:", config
