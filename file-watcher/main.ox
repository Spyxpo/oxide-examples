use fs

# Watch directory for changes
watchPath = "./src"
print "Watching for changes in:", watchPath
print "Press Ctrl+C to stop"

func onFileChange(event)
    match event.type
        case "create"
            print "[+] Created:", event.path
        case "modify"
            print "[~] Modified:", event.path
            # Run tests on Oxide file changes
            if endsWith(event.path, ".ox")
                print "    Running tests..."
                result = run_command("oxide test")
                if result.success
                    print "    Tests passed"
                else
                    print "    Tests failed"
                endif
            endif
        case "delete"
            print "[-] Deleted:", event.path
    endmatch
endfunc

fs.watch(watchPath, onFileChange)
