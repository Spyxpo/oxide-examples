# Borrowing - access without ownership transfer

struct User
    name: str
    score: i32
endstruct

# Immutable borrow - can read but not modify
func display_user(user: borrow User)
    print "Name:", user.name
    print "Score:", user.score
endfunc

# Mutable borrow - can modify the data
func add_points(user: borrow mut User, points: i32)
    user.score = user.score + points
    print "Added", points, "points to", user.name
endfunc

# Create a mutable user
player: mut User = User { name: "Alice", score: 100 }

# Immutable borrow - data is read-only
display_user(borrow player)

# Mutable borrow - can modify
add_points(borrow mut player, 50)

# We still own player - borrowing doesn't transfer ownership
print "Final score:", player.score

# Multiple immutable borrows are allowed
ref1: borrow User = borrow player
ref2: borrow User = borrow player
print "Via ref1:", ref1.name
print "Via ref2:", ref2.name
