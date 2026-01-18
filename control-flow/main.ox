# If-else statement
score = 85

if score >= 90
    grade = "A"
elseif score >= 80
    grade = "B"
elseif score >= 70
    grade = "C"
else
    grade = "F"
endif

print "Grade:", grade

# Match expression
day = 3
match day
    case 1 => print "Monday"
    case 2 => print "Tuesday"
    case 3 => print "Wednesday"
    case 4 => print "Thursday"
    case 5 => print "Friday"
    default => print "Weekend"
endmatch

# For loop with range
print "Counting:"
for i = 1 to 5
    print "  ", i
endfor

# While loop
count = 3
while count > 0
    print "Countdown:", count
    count = count - 1
endwhile
print "Liftoff!"
