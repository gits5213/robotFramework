# Lesson 7 — Your own keywords

**Time:** about 15 minutes  
**You will:** group steps under a name you choose  
**You need:** Lessons 3–5

---

## Why make your own keywords?

A **keyword** is a named step.

If you repeat the same three lines in every test, the file gets hard to read. You can give those three lines a name, then use that name.

It is like naming a recipe “Make toast” instead of writing “take bread, use toaster, put on plate” every time.

---

## The coffee shop example

Open [examples/keywords/coffee_shop.robot](../examples/keywords/coffee_shop.robot).

The test reads like a story:

```
Customer orders coffee
    Greet the customer
    Take the order    latte
    Confirm the drink    latte
```

Those three lines are **your** keywords. They are defined lower in the same file, under `*** Keywords ***`.

---

## How a keyword with extra information works

Look at:

```
Take the order
    [Arguments]    ${drink}
    Log    Customer asked for a ${drink}
```

In everyday words:

- The keyword is named **Take the order**
- `[Arguments]    ${drink}` means “this step needs one piece of extra information”
- When the test says `Take the order    latte`, the word `latte` is put into `${drink}`
- `Log` then writes: `Customer asked for a latte`

`${drink}` is a small variable. Lesson 8 covers variables more fully. For now, read it as “the drink they asked for.”

---

## Run it

```
robot examples/keywords/coffee_shop.robot
```

You want **1 test, 1 passed, 0 failed**.

Then open `log.html`. You should see your keyword names in the list of steps, and the `Log` messages inside them.

---

## Try it yourself

Add a new test in the same file:

```
Customer orders tea
    Greet the customer
    Take the order    tea
    Confirm the drink    tea
```

Keep the spacing: the test name on the left, steps indented, two or more spaces after each keyword.

Save, then run the file again. You should see **2 tests, 2 passed**.

---

## When should you make a keyword?

Make one when:

- you repeat the same steps
- a group of steps has a clear name in real life (“Greet the customer”)

Do not make a keyword for a single `Log` line. That does not buy you anything yet.

---

## Check that you got it

You finished this lesson when:

- you ran `coffee_shop.robot` and it passed
- you can explain that a keyword is a reusable named step

**Next:** [Lesson 8 — Variables](08-variables.md)
