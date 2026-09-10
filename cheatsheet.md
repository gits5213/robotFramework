# Quick cheat sheet

Keep this page nearby after Lesson 3.

## Check that it is installed

```
robot --version
```

If that fails, use:

```
python3 -m robot --version
```

You should see something like `Robot Framework 7.x`.

If `robot` is not recognized, use `python3 -m robot` in every command below.

## Run one file

In the terminal, go to the folder, then run:

```
robot hello.robot
```

Or from the main folder of this guide:

```
robot examples/first-test/hello.robot
```

## Run every test in a folder

```
robot examples/first-test
```

## After a run, open these files

They appear in the same folder where you ran the command.

| File | What it is |
| --- | --- |
| `report.html` | The summary. Start here. |
| `log.html` | The detailed story of each step. |
| `output.xml` | Data for other tools. You can ignore this for now. |

Open `report.html` by double-clicking it, or drag it into a browser.

## Spacing rule

Put **at least two spaces** between the keyword and what comes after it:

```
Log    Hello
Should Be Equal    cat    cat
```

One space is not enough.

## File shape

```
*** Settings ***
Documentation    A short note about this file.

*** Variables ***
${NAME}    Sam

*** Test Cases ***
My test name
    Log    Hello ${NAME}

*** Keywords ***
My own step
    Log    This is a reusable step
```

You do not need every section in every file.

## Common beginner keywords

| Keyword | What it does |
| --- | --- |
| `Log    some text` | Writes a message in the log |
| `Should Be Equal    a    a` | Passes if the two values are the same |
| `Should Not Be Equal    a    b` | Passes if the two values are different |
| `Should Be Empty    ${value}` | Passes if the value has nothing in it |
| `Should Not Be Empty    ${value}` | Passes if the value has something in it |

## If something goes wrong

1. Read the red error. It often says the file was not found, or spaces were wrong.
2. Check you are in the right folder (`pwd` on Mac, `cd` to move).
3. Check `robot --version` still works.
4. Look at [glossary.md](glossary.md) for the word that confused you.
