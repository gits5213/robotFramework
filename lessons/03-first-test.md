# Lesson 3 — Your first test

**Time:** about 15 minutes  
**You will:** run a real test and see it pass  
**You need:** Lesson 2 finished (`python3 -m robot --version` works)

---

## What you will run

There is already a tiny test in this folder:

[examples/first-test/hello.robot](../examples/first-test/hello.robot)

It does one thing: it writes the message **Hello! Robot Framework is working.**

That is enough for a first test. We are checking that the tool runs, not that a website works.

---

## Step 1 — Look at the file

Open `examples/first-test/hello.robot`. You should see something like this:

```
*** Settings ***
Documentation    My first Robot Framework test. It only prints a message.

*** Test Cases ***
Say hello
    Log    Hello! Robot Framework is working.
```

What this means in plain English:

- `*** Settings ***` is a header. The documentation line is a note for humans.
- `*** Test Cases ***` means “the tests start here.”
- `Say hello` is the **name** of the test.
- `Log    Hello! ...` is the **step**. `Log` means “write this down.”

Notice the gap between `Log` and `Hello`. That gap must be **at least two spaces**. One space is not enough.

---

## Step 2 — Open a terminal in this folder

In the terminal, go to the main folder of this guide.

**Mac example:**

```
cd ~/Desktop/toGithub/robotFramework
```

**Check you are in the right place.** Type:

```
ls
```

On Windows, type:

```
dir
```

You should see folders named `examples` and `lessons`.

---

## Step 3 — Run the test

Type this and press Enter:

```
python3 -m robot examples/first-test/hello.robot
```

Wait a few seconds.

---

## Step 4 — Read the terminal result

You want a block similar to this:

```
==============================================================================
Hello
==============================================================================
Say hello                                                             | PASS |
------------------------------------------------------------------------------
Hello                                                                 | PASS |
1 test, 1 passed, 0 failed
==============================================================================
```

The important line is:

**1 test, 1 passed, 0 failed**

`PASS` means it worked.

You will also see file names like `report.html` and `log.html`. You will open those in Lesson 6. For now, the terminal message is enough.

---

## If it did not run

| What you see | What to try |
| --- | --- |
| `robot: command not found` | Do not use `robot` by itself on this Mac. Use `python3 -m robot` as shown above. |
| `File or directory does not exist` | You are in the wrong folder. Use `cd` to enter the `robotFramework` folder, then try again. |
| Error about spaces or `No keyword` | Open the file and make sure there are **two or more spaces** after `Log`. |

---

## Try it yourself (optional)

1. In `hello.robot`, change the message after `Log` to your name.
2. Save the file.
3. Run the same `python3 -m robot` command again.

The test should still pass. You only changed the text it writes down.

---

## Check that you got it

You have finished this lesson when you have seen **1 test, 1 passed, 0 failed**.

**Next:** [Lesson 4 — How a test file is written](04-how-a-test-file-works.md)
