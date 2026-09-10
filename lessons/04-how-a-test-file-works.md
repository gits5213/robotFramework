# Lesson 4 — How a test file is written

**Time:** about 15 minutes  
**You will:** recognize the parts of a `.robot` file  
**You need:** to have opened `hello.robot` in Lesson 3

---

## A `.robot` file is just text

It is not a special program. It is a text file with a few headings.

Robot Framework looks for headings like these:

```
*** Settings ***
*** Variables ***
*** Test Cases ***
*** Keywords ***
```

You do not need all of them every time. Lesson 3 only used **Settings** and **Test Cases**. That is normal.

---

## The four parts, in everyday words

### Settings

Notes and extras at the top.

```
*** Settings ***
Documentation    Why this file exists.
```

Later, this is also where you would add a library (a pack of extra steps). You do not need that yet.

### Variables

Labeled boxes that hold values. You will use these in Lesson 8.

```
*** Variables ***
${CUSTOMER}    Sam
```

### Test Cases

The actual checklists. Each name is one test.

```
*** Test Cases ***
Say hello
    Log    Hello
```

### Keywords

Steps you invent, so you can reuse a group of lines. You will do this in Lesson 7.

```
*** Keywords ***
Greet the customer
    Log    Welcome
```

---

## Spacing is the main “gotcha”

Robot Framework uses **spaces** to separate columns, not commas.

Think of it like a simple table:

| Column 1 | Column 2 | Column 3 |
| --- | --- | --- |
| `Log` | `Hello` | |
| `Should Be Equal` | `cat` | `cat` |

Rules that prevent most beginner errors:

1. Put **two or more spaces** between columns. Four spaces is a comfortable habit.
2. Indent the steps under a test name (usually four spaces).
3. Do not use Tab if you can avoid it. Prefer the space bar.
4. The test **name** (`Say hello`) sits at the left. The **steps** sit indented under it.

**Wrong** (only one space):

```
Log Hello
```

**Right:**

```
Log    Hello
```

---

## Comments

A comment is a note for you. Robot Framework ignores it.

```
# This line is only a reminder for me
```

You can also add `...` to continue a long line. You will not need that in this beginner course.

---

## One file can hold several tests

```
*** Test Cases ***
First check
    Log    One

Second check
    Log    Two
```

Robot Framework will run both, one after the other.

---

## Naming tips

- Name a test after **what you are checking**, not after a technical action.
- Good: `Welcome message is shown`
- Harder to read: `Test1` or `Check1`

Spaces in the name are allowed. That is why names can look like English sentences.

---

## Check that you got it

Look at [hello.robot](../examples/first-test/hello.robot) again and point to:

1. the Settings heading
2. the test name
3. the one step under it
4. the two-or-more spaces after `Log`

If you can find those four things, you can read a Robot file.

**Next:** [Lesson 5 — Passing and failing](05-pass-and-fail.md)
