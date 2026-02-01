# Ownership in Oxide - memory safety without garbage collection

struct Document
    title: str
    content: str
endstruct

# Create a document - we own it
doc = Document { title: "Report", content: "Important data..." }
print "Created:", doc.title

# Transfer ownership with give()
func process_document(doc: Document)
    print "Processing:", doc.title
    # doc is consumed here
endfunc

# give() transfers ownership - original becomes invalid
process_document(give(doc))

# This would be a compile error:
# print doc.title  # Error: doc has been moved

# Ownership with return values
func create_document(title: str) -> Document
    return Document { title: title, content: "New content" }
endfunc

new_doc = create_document("New Report")
print "New document:", new_doc.title

# Copy Types - primitives are automatically copied
a: i32 = 42
b = a    # b gets a copy
print "a:", a  # Both a and b are valid
print "b:", b
