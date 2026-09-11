# Robot Framework for beginners

Welcome. This folder is a **step-by-step class** for people who are not programmers.

You will learn how to write simple checks (called **tests**) in plain English, run them, and read the result.

You do **not** need to know coding first. Go in order. Each lesson is short.

---

## How to use this guide

1. Start at **Lesson 1**.
2. Read one lesson at a time.
3. When a lesson says “try it”, do that before you move on.
4. If a word is confusing, open [glossary.md](glossary.md).
5. If you forget a command, open [cheatsheet.md](cheatsheet.md).

Set aside about **15–20 minutes per lesson**.

---

## Lessons

| Order | Lesson | What you will be able to do |
| --- | --- | --- |
| 1 | [What is Robot Framework?](lessons/01-what-is-robot-framework.md) | Explain it in one sentence |
| 2 | [Install the tools](lessons/02-install.md) | Get Robot Framework working on your computer |
| 3 | [Your first test](lessons/03-first-test.md) | Write and run a tiny test |
| 4 | [How a test file is written](lessons/04-how-a-test-file-works.md) | Read a `.robot` file without panic |
| 5 | [Passing and failing](lessons/05-pass-and-fail.md) | See green (pass) and red (fail) |
| 6 | [Read the report](lessons/06-read-the-report.md) | Open the HTML report and understand it |
| 7 | [Your own keywords](lessons/07-your-own-keywords.md) | Reuse steps, like a named recipe |
| 8 | [Variables](lessons/08-variables.md) | Put names and values in one place |
| 9 | [What to learn next](lessons/09-what-next.md) | Gentle next steps |
| 10 | [Test a real web page](lessons/10-browser-testing.md) | Install Chrome testing and run live tests |
| 11 | [The live registration form](lessons/11-registration-form.md) | Read tests that fill the GITS registration form |
| 12 | [What is an API?](lessons/12-what-is-an-api.md) | Explain API tests in everyday words |
| 13 | [Run the API tests](lessons/13-api-tests.md) | Send GET and POST and read the reply |

---

## Practice files

These are ready-made examples. You will use them in the lessons.

- [examples/first-test/hello.robot](examples/first-test/hello.robot)
- [examples/pass-and-fail/checks.robot](examples/pass-and-fail/checks.robot)
- [examples/keywords/coffee_shop.robot](examples/keywords/coffee_shop.robot)
- [examples/variables/shopping.robot](examples/variables/shopping.robot)
- [examples/registration-form/registration_form.robot](examples/registration-form/registration_form.robot) — live tests for the GITS registration form
- [examples/api/api_tests.robot](examples/api/api_tests.robot) — live API tests (httpbin + jsonplaceholder)

---

## One idea to keep in mind

A Robot Framework test is like a **checklist**:

```
Open the app
Type the username
Type the password
Click Sign in
Check that the welcome page is shown
```

Robot Framework reads those lines and tries to do them. If a check is true, the test **passes**. If a check is false, the test **fails**.

That is the whole idea. The rest of the lessons are just how to write it, run it, and read the result.

Start here: [Lesson 1 — What is Robot Framework?](lessons/01-what-is-robot-framework.md)
