# Lesson 5 — Passing and failing

**Time:** about 15 minutes  
**You will:** see one test pass and one test fail on purpose  
**You need:** to be able to run `robot` from Lesson 3

---

## Why failing is useful

A **fail** is not a broken computer. It means:

> “This check was not true.”

That is the point of testing. Green means “still good.” Red means “look at this.”

In this lesson you will fail a test **on purpose**, so the red result looks familiar.

---

## The practice file

Open [examples/pass-and-fail/checks.robot](../examples/pass-and-fail/checks.robot).

There are two tests:

1. **The word cat is cat** — this should pass.
2. **Apple is the same as orange** — this should fail, because those words are not the same.

The important step is:

```
Should Be Equal    apple    orange
```

`Should Be Equal` means “these two things must be the same.” Apple and orange are not, so Robot Framework marks that test as **FAIL**.

---

## Run it

From the main folder:

```
robot examples/pass-and-fail/checks.robot
```

---

## What you should see

Something like:

```
The word cat is cat                                                   | PASS |
Apple is the same as orange                                           | FAIL |
...
2 tests, 1 passed, 1 failed
```

That is the correct result for this lesson.

Also notice the file as a whole is marked failed. One failed test makes the whole run red. That is normal.

---

## Read the fail message

In the terminal you will see a line similar to:

```
apple != orange
```

`!=` means “is not equal to.”

So Robot Framework is saying: you asked me to check that these are equal, and they are not.

---

## Try it yourself

1. In `checks.robot`, change the failing test so both words are `apple`.
2. Save the file.
3. Run the command again.

You should now see **2 tests, 2 passed, 0 failed**.

Then change it back if you want the example to keep showing a fail for the next person.

---

## Other simple checks you can try later

You do not need to memorize these. They are here so the idea is clear.

| Keyword | Meaning |
| --- | --- |
| `Should Be Equal    a    a` | The two values are the same |
| `Should Not Be Equal    a    b` | The two values are different |
| `Should Be Empty    ${text}` | There is nothing in it |
| `Should Not Be Empty    ${text}` | There is something in it |

`Log` only writes a message. It does not pass or fail by itself. **Should ...** keywords are the actual checks.

---

## Check that you got it

You finished this lesson when:

- you saw 1 passed and 1 failed
- you understood that red means “this check was not true”

**Next:** [Lesson 6 — Read the report](06-read-the-report.md)
