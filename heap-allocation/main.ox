# Heap<T> - heap allocation with ownership
# No garbage collector - deterministic cleanup

entity LargeData
    id: i32
    name: str
endentity

func demo_basic_heap()
    print "=== Basic Heap Allocation ==="

    # Allocate on heap
    boxed: Heap<i32> = heap(42)
    print "Heap value:", *boxed

    # Automatic cleanup when scope ends
endfunc

func demo_heap_struct()
    print ""
    print "=== Heap with Structs ==="

    # Large data benefits from heap
    data: Heap<LargeData> = heap(LargeData {
        id: 1,
        name: "Large Dataset"
    })

    print "Data ID:", (*data).id
    print "Data name:", (*data).name
endfunc

# Ownership transfer with heap values
func create_data() -> Heap<str>
    return heap("Created in function")
endfunc

func process_data(data: borrow Heap<str>)
    print "Processing:", **data
endfunc

func demo_heap_ownership()
    print ""
    print "=== Heap Ownership ==="

    # Create heap data
    result = create_data()
    print "Received:", *result

    # Borrow heap value (doesn't transfer ownership)
    process_data(borrow result)

    # Still own it
    print "Still have:", *result
endfunc

func demo_ownership_transfer()
    print ""
    print "=== Ownership Transfer ==="

    original: Heap<str> = heap("Hello, Heap!")
    print "Original:", *original

    # Transfer ownership
    new_owner = give(original)
    print "New owner:", *new_owner

    # original is now invalid
    # print *original  # Error: use of moved value
endfunc

# Run demos
demo_basic_heap()
demo_heap_struct()
demo_heap_ownership()
demo_ownership_transfer()

print ""
print "=== Demo Complete ==="
