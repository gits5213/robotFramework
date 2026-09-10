# Lesson 8 — Variables

**Time:** about 15 minutes  
**You will:** put a value in a labeled box and reuse it  
**You need:** Lesson 7 is helpful, but not required

---

## What a variable is

A **variable** is a name that holds a value.

Instead of writing `Sam` in five places, you write `${CUSTOMER}` and set it to `Sam` once.

If the name changes, you change it in **one** place.

In Robot Framework, these names usually look like `${THIS}` — a dollar sign, curly braces, and the name inside.

---

## The shopping example

Open [examples/variables/shopping.robot](../examples/variables/shopping.robot).

At the top:

```
*** Variables ***
${CUSTOMER}       Sam
${ITEM}           notebook
${PRICE}          5
```

In the test, those names are used instead of the raw words.

When Robot Framework runs the file, it replaces `${CUSTOMER}` with `Sam`, and so on.

---

## Run it

```
python3 -m robot examples/variables/shopping.robot
```

You want it to pass. Then open `log.html` and confirm the messages show **Sam** and **notebook**, not the `${...}` names.

The `${...}` names are for you while writing. The log shows the filled-in values.

---

## Try it yourself

1. Change `${CUSTOMER}` to your name.
2. Change `${ITEM}` to something else, like `apples`.
3. Save and run again.

The checks should still pass, because the test uses the variables, not a hard-coded name.

---

## A variable only in one test

You can also create a variable inside a test:

```
${greeting}=    Set Variable    Hello
Log    ${greeting}
```

`Set Variable` means “put this value into this name.”

The `=` is optional in many cases, but it makes the line easier to read: “greeting becomes Hello.”

For this beginner course, putting shared values under `*** Variables ***` is enough.

---

## Naming tips

- Use clear names: `${CUSTOMER}` is better than `${X}`
- Capital letters are a common style for values used across a file
- The name must stay inside `${` and `}` when you use it

---

## Check that you got it

You finished this lesson when you can say:

> A variable is a label for a value. I set it once, then write `${NAME}` wherever I need that value.

**Next:** [Lesson 9 — What to learn next](09-what-next.md)
