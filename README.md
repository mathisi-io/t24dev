# T24 Programming

## Lesson I - Getting started with InfoBasic(jbc)

The purpose of this lesson is to give you an overview on how T24 programming is done.

### Step 1: WRITE your program

Using any code editor of choice create a file called `HelloProg.b` on your computer and add the following lines of code:

```basic
PROGRAM HelloProg
    CRT "Hello there!"
END
```

Line 1 we have PROGRAM and the name of our program. This should be the name of the file without extension. 
*In most of cases, we will be writing* `SUBROUTINE` *instead of* `PROGRAM`. *Subroutines run inside T24 while programs run on jshell.*

### Step 2: PUSH or Copy your code to T24 Server

Push your source code to the server using git `git` or `ftp` (depending on what is available to you. You can also `copy` and `paste` your source code into a file on the server with the same name.
Make sure the file is created in your local `.BP` folder (eg. `MATHISI.BP`)

### Step 3: COMPILE your source code file

Use `BASIC [FOLDER_NAME] HelloProg.b` program to compile your source code: 

```jsh
jsh t24 ~ -->BASIC MATHISI.BP HelloProg.b
HelloProg.b
BASIC_13.c
Source file HelloProg.b compiled successfully
```

### Step 3: CATALOG your program

Any T24 program needs to be catalogued before it can run. Use `CATALOG [FOLDER_NAME] HelloProg.b`:

```jsh
jsh t24 ~ -->CATALOG MATHISI.BP HelloProg.b
HelloProg
Object HelloProg cataloged successfully
```

### Step 4: RUN your program

To run your program, simply type the name of the program `HelloProg` from the `jsh` prompt:

```jsh
jsh t24 ~ -->HelloProg
Hello there!
```

As you can see, our message **"Hello there!"** was printed on the console.

