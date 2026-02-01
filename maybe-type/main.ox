# Maybe<T> - safe handling of optional values
# No null pointer exceptions!

func find_user(id: i32) -> Maybe<str>
    if id == 1
        return value("Alice")
    elseif id == 2
        return value("Bob")
    endif
    return nothing
endfunc

# Pattern matching for safe access
result1 = find_user(1)
match result1
    case value(name) => print "Found:", name
    case nothing => print "User not found"
endmatch

result2 = find_user(999)
match result2
    case value(name) => print "Found:", name
    case nothing => print "User not found"
endmatch

# Using must() when you're certain
confirmed = find_user(2)
name = confirmed.must()  # Crashes if nothing
print "Confirmed user:", name

# Using or() for defaults
unknown = find_user(404)
default_name = unknown.or("Guest")
print "User or default:", default_name

# Chaining Maybe operations
func get_greeting(id: i32) -> Maybe<str>
    user = find_user(id)
    match user
        case value(name) => return value("Hello, " + name + "!")
        case nothing => return nothing
    endmatch
endfunc

greeting = get_greeting(1)
match greeting
    case value(msg) => print msg
    case nothing => print "No greeting available"
endmatch
