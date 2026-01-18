use http
use thread

# Async function to download a file
async func downloadFile(url, path)
    print "Downloading:", url

    try
        response = await get(url)

        result = write response in path
        print "Saved:", path
        return True
    catch error
        print "Failed:", url, "-", error
        return False
    endtry
endfunc

# Download multiple files concurrently
downloads = [
    ["https://example.com/file1.zip", "file1.zip"],
    ["https://example.com/file2.zip", "file2.zip"],
    ["https://example.com/file3.zip", "file3.zip"],
    ["https://example.com/file4.zip", "file4.zip"]
]

tasks = []
for item in downloads
    task = async downloadFile(item[0], item[1])
    add task to tasks
endfor

results = await all(tasks)

success = 0
failed = 0
for result in results
    if result
        success = success + 1
    else
        failed = failed + 1
    endif
endfor

print ""
print "Download complete:"
print "  Success:", success
print "  Failed:", failed
