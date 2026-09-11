# Lesson 1 — What is Robot Framework?

**Time:** about 10 minutes  
**You will:** explain Robot Framework in everyday words  
**You need:** nothing installed yet

---

## The simple version

**Robot Framework is a helper that follows a checklist and tells you if each item is true.**

If the checklist item is true, it says **PASS**.  
If the checklist item is not true, it says **FAIL**.

That is all it is doing. People use it to check that a website, an app, or a process still works the way they expect.

---

## A kitchen picture

Think of a recipe:

1. Boil water
2. Add tea bag
3. Wait 3 minutes
4. Check that the tea is hot

A **test** is one recipe.  
A **keyword** is one line in the recipe, like “Add tea bag”.  
**Robot Framework** is the person who follows the recipe and reports back.

You write the recipe in a file that ends with `.robot`. Then you ask Robot Framework to run it.

---

## What a test looks like

You do not write secret code. You write lines that look like English:

```
*** Test Cases ***
Make a cup of tea
    Boil water
    Add tea bag
    Wait    3 minutes
    Tea should be hot
```

Some of those lines are built in. Some you invent and name yourself. You will do both in later lessons.

---

## Words you will see a lot

| Word | Everyday meaning |
| --- | --- |
| Test case | One named checklist |
| Keyword | One step |
| Pass | “Yes, that was correct” |
| Fail | “No, that was not what we expected” |
| Suite | A file that holds one or more tests |

If you forget these, open [glossary.md](../glossary.md).

---

## What this course will not do yet

To keep this beginner-friendly, the first lessons **do not** open a web browser. You will start with tiny checks on your computer, like “is this word equal to that word?”

That is on purpose. First you learn the shape of a test. Real website tests come later, in [Lesson 10](10-browser-testing.md) and [Lesson 11](11-registration-form.md). API tests (no browser) come in [Lesson 12](12-what-is-an-api.md) and [Lesson 13](13-api-tests.md).

---

## Check that you got it

Before Lesson 2, you should be able to say:

> Robot Framework runs checklists I write in a `.robot` file. Each test either passes or fails.

If that sentence makes sense, you are ready.

**Next:** [Lesson 2 — Install the tools](02-install.md)
