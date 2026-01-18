# Memory pool for efficient allocations
# Uses Oxide's systems programming features

class MemoryPool
    func init(capacity: integer)
        self.blockSize = sizeof(integer)
        self.capacity = capacity
        self.freeList = []
        self.allocated = 0

        # Initialize free list with available slots
        for i = 0 to capacity
            add i to self.freeList
        endfor
    endfunc

    func allocate()
        if len(self.freeList) == 0
            self.grow()
        endif

        index = self.freeList[len(self.freeList) - 1]
        removeAt (len(self.freeList) - 1) from self.freeList
        self.allocated = self.allocated + 1
        return index
    endfunc

    func deallocate(index)
        add index to self.freeList
        self.allocated = self.allocated - 1
    endfunc

    func grow()
        newCapacity = self.capacity * 2
        print "Growing pool to", newCapacity

        # Add new slots to free list
        for i = self.capacity to newCapacity
            add i to self.freeList
        endfor

        self.capacity = newCapacity
    endfunc

    func stats()
        print "Pool capacity:", self.capacity
        print "Allocated:", self.allocated
        print "Free:", len(self.freeList)
    endfunc
endclass

# Usage
pool = new MemoryPool(1000)
indices = []

# Allocate 100 slots
for i = 0 to 100
    idx = pool.allocate()
    add idx to indices
endfor

print "Allocated 100 slots from pool"
pool.stats()

# Deallocate all
for idx in indices
    pool.deallocate(idx)
endfor

print ""
print "Returned all slots to pool"
pool.stats()
