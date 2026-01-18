use fs

# Count lines in a file
func countLines(filepath)
    content = read filepath
    lines = split(content, "\n")
    return len(lines)
endfunc

# Search for pattern in file
func searchInFile(pattern, filepath)
    content = read filepath
    lines = split(content, "\n")
    lineNum = 1
    for line in lines
        if contains(line, pattern)
            print lineNum, ":", line
        endif
        lineNum = lineNum + 1
    endfor
endfunc

# Main program
print "File Tool - Oxide CLI Example"
print "Usage:"
print "  count <file>           - Count lines"
print "  search <pattern> <file> - Search text"

# Get command line arguments
args = get_args()

if len(args) >= 2
    command = args[0]
    if command == "count"
        lines = countLines(args[1])
        print "Lines:", lines
    elseif command == "search" and len(args) >= 3
        searchInFile(args[1], args[2])
    endif
endif
