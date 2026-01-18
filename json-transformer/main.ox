use json

# Transform user data
func transformUser(input)
    # Combine name fields
    fullName = get(input, "first_name") + " " + get(input, "last_name")

    # Calculate age from birth year
    birthDate = get(input, "birth_date")
    birthYear = toNumber(split(birthDate, "-")[0])
    age = 2024 - birthYear

    # Build transformed object
    output = create()
    set(output, "id", get(input, "id"))
    set(output, "fullName", fullName)
    set(output, "email", toLowerCase(get(input, "email")))
    set(output, "age", age)
    set(output, "isActive", get(input, "status") == "active")

    return output
endfunc

# Read and parse JSON file
inputData = read "users.json"
users = parse(inputData)

print "Transforming", len(users), "users..."

# Transform all users
transformed = []
for user in users
    result = transformUser(user)
    add result to transformed
endfor

# Show sample output
print ""
print "Sample output:"
print stringify(transformed[0])

# Write transformed data
output = stringify(transformed)
result = write output in "users_transformed.json"

print ""
print "Transformed data written to users_transformed.json"
