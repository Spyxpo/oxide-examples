# Array bounds checking - no buffer overflows!

func demo_safe_access()
    print "=== Safe Array Access ==="

    # Fixed-size array
    numbers: [5]i32 = [10, 20, 30, 40, 50]

    # Safe access - bounds checked
    print "First:", numbers[0]
    print "Last:", numbers[4]

    # Compile-time error for constant out-of-bounds:
    # x = numbers[10]  # Error: index 10 out of bounds
endfunc

func demo_safe_iteration()
    print ""
    print "=== Safe Iteration ==="

    values: [5]str = ["apple", "banana", "cherry", "date", "elderberry"]

    # Index-based with known bounds
    print "Index-based:"
    for i = 0 to 4
        print " ", i, ":", values[i]
    endfor

    # For-each is always safe
    print "For-each:"
    for item in values
        print " ", item
    endfor
endfunc

func find_index(arr: borrow [5]i32, target: i32) -> Maybe<i32>
    for i = 0 to 4
        if arr[i] == target
            return value(i)
        endif
    endfor
    return nothing
endfunc

func demo_safe_search()
    print ""
    print "=== Safe Search ==="

    numbers: [5]i32 = [15, 25, 35, 45, 55]

    # Search for existing value
    result1 = find_index(borrow numbers, 35)
    match result1
        case value(idx) => print "Found 35 at index:", idx
        case nothing => print "35 not found"
    endmatch

    # Search for non-existing value
    result2 = find_index(borrow numbers, 100)
    match result2
        case value(idx) => print "Found 100 at index:", idx
        case nothing => print "100 not found"
    endmatch
endfunc

func demo_2d_array()
    print ""
    print "=== 2D Array Bounds Checking ==="

    # 2D array (3x3 matrix)
    matrix: [3][3]i32 = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ]

    print "Matrix elements:"
    for row = 0 to 2
        for col = 0 to 2
            print " matrix[", row, "][", col, "] =", matrix[row][col]
        endfor
    endfor

    print "Center element:", matrix[1][1]
endfunc

# Run demos
demo_safe_access()
demo_safe_iteration()
demo_safe_search()
demo_2d_array()

print ""
print "=== Demo Complete ==="
