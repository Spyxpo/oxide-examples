# Sales record class
class SalesRecord
    func init(date, product, quantity, price)
        self.date = date
        self.product = product
        self.quantity = quantity
        self.price = price
        self.total = quantity * price
    endfunc
endclass

# Parse CSV file
func parseCSV(filepath)
    content = read filepath
    lines = split(content, "\n")
    records = []

    # Skip header, parse each line
    for i = 1 to len(lines)
        parts = split(lines[i], ",")
        if len(parts) >= 4
            record = new SalesRecord(
                parts[0], parts[1],
                toNumber(parts[2]), toNumber(parts[3])
            )
            add record to records
        endif
    endfor
    return records
endfunc

# Load and analyze data
records = parseCSV("sales.csv")
print "Loaded", len(records), "records"

# Calculate total revenue
totalRevenue = 0
for record in records
    totalRevenue = totalRevenue + record.total
endfor

avgOrder = totalRevenue / len(records)

# Group by product
byProduct = {}
for record in records
    if dict_has(byProduct, record.product)
        byProduct[record.product] = byProduct[record.product] + record.total
    else
        byProduct[record.product] = record.total
    endif
endfor

print ""
print "=== Sales Analysis ==="
print "Total Revenue: $", totalRevenue
print "Average Order: $", avgOrder
print ""
print "Revenue by Product:"

for product in dict_keys(byProduct)
    print "  ", product, ": $", byProduct[product]
endfor
