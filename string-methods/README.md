# String Methods Example

Oxide provides comprehensive built-in string manipulation functions.

## Available Methods

| Method | Description |
|--------|-------------|
| `trim(str)` | Remove leading/trailing whitespace |
| `upper(str)` | Convert to uppercase |
| `lower(str)` | Convert to lowercase |
| `split(str, delimiter)` | Split string into list |
| `join(list, delimiter)` | Join list into string |
| `contains(str, substr)` | Check if substring exists |
| `startsWith(str, prefix)` | Check if starts with prefix |
| `endsWith(str, suffix)` | Check if ends with suffix |
| `indexOf(str, substr)` | Find position of substring |
| `substring(str, start, end)` | Extract portion of string |
| `replace(str, old, new)` | Replace occurrences |
| `repeat(str, count)` | Repeat string n times |
| `reverse(str)` | Reverse the string |

## Examples

### Basic Operations
```oxide
text = "  Hello World  "
print(trim(text))        // "Hello World"
print(upper(text))       // "  HELLO WORLD  "
print(lower(text))       // "  hello world  "
```

### Splitting and Joining
```oxide
csv = "a,b,c"
parts = split(csv, ",")  // ["a", "b", "c"]
joined = join(parts, "-") // "a-b-c"
```

### Search and Check
```oxide
str = "Hello, Oxide!"
print(contains(str, "Oxide"))     // 1 (true)
print(startsWith(str, "Hello"))   // 1 (true)
print(indexOf(str, "Oxide"))      // 7
```

## Running the Example

```bash
oxide main.ox
```
