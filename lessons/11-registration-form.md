# Lesson 11 — The live registration form

**Time:** about 20 minutes  
**You will:** read real tests that type into a website  
**You need:** Lesson 10 (Chrome opened when you ran the tests)

---

## The page

These tests automate:

[https://gitsuniversity.org/practice/registration-form/](https://gitsuniversity.org/practice/registration-form/)

It is a practice form. Nothing is saved to a real student account. That makes it a safe place to learn.

The form asks for:

- First name, last name
- Email, phone, username
- Password and confirm password
- Gender, date of birth, country
- Terms and conditions
- A **Register** button

If something is missing or wrong, the page shows a red message under that field. If everything is valid, it shows **Registration Successful**.

---

## Two files, two jobs

Open both files in Cursor:

1. [examples/registration-form/resources.robot](../examples/registration-form/resources.robot) — names, web addresses, and reusable steps
2. [examples/registration-form/registration_form.robot](../examples/registration-form/registration_form.robot) — the actual test cases

This is the same idea as Lesson 7 (your own keywords) and Lesson 8 (variables). The new part is that the steps now talk to Chrome.

---

## How a web step looks

A typical line:

```
Input Text    id=registration-form-email-input    john.doe@example.com
```

In everyday words:

- `Input Text` means “type into a box”
- `id=registration-form-email-input` is the box’s name on the page
- `john.doe@example.com` is what to type

The `id=...` values come from the page itself. You do not invent them. The practice page already has clear names, which is why it is a good first website to automate.

In `resources.robot`, **Click Register** uses one extra line: `Execute Javascript`. The live page has a banner that can sit on top of the Register button. That line clicks the button directly so the tests stay reliable. You can still read the rest of the file as English steps.

---

## What each test checks

| Test name | What it proves |
| --- | --- |
| The registration form page loads | The live page is up and the form is visible |
| Empty form shows required field errors | Register with a blank form shows “is required” messages |
| Invalid email shows a format error | `invalid-email` is not accepted |
| Short username shows a length error | Username must be at least 5 characters |
| Short password shows a length error | Password must be at least 8 characters |
| Mismatched passwords show an error | Confirm Password must match |
| Invalid phone number shows an error | Phone must be 10 digits |
| Successful registration with valid data | A complete valid form shows the success page |
| Register another account returns to the form | After success, you can start again |

That mix is what testers call **happy path** (the success test) and **negative tests** (the error tests). You do not need that vocabulary to run them. It just means: check the good case, and also check the mistakes.

---

## Try it yourself

Change the valid first name in `resources.robot`:

```
${VALID_FIRST_NAME}                  John
```

to your first name. Save the file. Run:

```
python3 -m robot --outputdir results examples/registration-form/registration_form.robot
```

The success test should still pass, and the success page should show your name.

---

## Website keywords you will see a lot

| Keyword | Everyday meaning |
| --- | --- |
| `Open Browser` | Start Chrome and open a page |
| `Go To` | Open this web address |
| `Input Text` | Type into a box |
| `Input Password` | Type into a password box |
| `Select From List By Label` | Choose an item in a dropdown |
| `Select Checkbox` | Tick a checkbox |
| `Click Button` | Click a button |
| `Page Should Contain` | This text must be on the page |
| `Element Should Contain` | This box/message must contain this text |
| `Close Browser` | Shut Chrome |

---

## Run one test only

If you want to watch just the success test:

```
python3 -m robot --outputdir results -t "Successful registration with valid data" examples/registration-form
```

`-t` means “only this test name.”

---

## Check that you got it

You finished this lesson when you can point to:

1. the file with the test names
2. the file with the shared steps
3. one test that should fail the form on purpose
4. one test that should succeed

**Next:** [Lesson 9 — What to learn next](09-what-next.md) (optional wrap-up)
