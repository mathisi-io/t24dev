# T24 Programming

## Lesson 2 - Syntax and Key features of InfoBasic

## [x] Variables

- Declaration is not required
- Assigned types during runtime:

  - string
  - numbers
  - dynamic arrays
  - dimensional arrays

- Indexes (for string or arrays) start from 1 (not 0)

### Strings

There are 3 ways of defining strings:

- Single quote: `name = 'Joe Doe'`
- Double quote: `company = "mathisi.io"`
- back slashes: `address = \23, avenue de l'armée\`

#### String manipulation

- Use `colon (;)` to **concatenate** strings.

  ```basic
  first_name = 'Joe' ; last_name = 'Doe'
  full_name = fist_name : ' ': 'last_name
  CRT full_name         ;* Joe Doe
  ```

- **Slicing**

```basic
name = "John Smith"
CRT name[1,4]       ;* John
CRT name[5]         ;* Smith
CRT name[-5, 5]     ;* Smith
```

- **Some functions**

```basic
name = "John Smith"
CRT LEFT(4)             ;* John
CRT RIGHT(5)            ;* Smith
CRT UPCASE(name)        ;* JOHN SMITH
CRT DOWNCASE("Value")   ;* value
CRT LEN(name)           ;* 10
CRT STR('A', 3)         ;* AAA
```

- [ ] Operators: assignment, comparison, arithmetic
- [ ] Multi-value and system variables
- [ ] Statements and Functions
- [ ] **Project 1: 28/36 rule**
