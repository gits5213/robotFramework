# Lesson 10 — Test a real web page

**Time:** about 20 minutes  
**You will:** install the extra tool that can open Chrome  
**You need:** Lessons 1–8, Google Chrome, and internet

---

## What changes in this lesson

Until now, tests only printed messages on your computer.

From here on, Robot Framework will:

1. Open Chrome
2. Go to a real page
3. Type, click, and check what the page shows

The extra tool is called **SeleniumLibrary**. Think of it as a pack of website steps, such as `Open Browser`, `Input Text`, and `Click Button`.

The live page you will automate is the GITS practice form:

[https://gitsuniversity.org/practice/registration-form/](https://gitsuniversity.org/practice/registration-form/)

Open that link once in Chrome and look at it. You will see First Name, Email, Password, and a **Register** button. That is the page the tests will use.

---

## Step 1 — Make sure Chrome is installed

On a Mac, open **Google Chrome**. If you do not have it, install it from [https://www.google.com/chrome/](https://www.google.com/chrome/).

Safari is fine for browsing. These tests need **Chrome**.

---

## Step 2 — Install the website library

In the terminal, go to this guide’s folder, then run:

```
cd ~/Desktop/toGithub/robotFramework
python3 -m pip install -r requirements.txt
```

That installs Robot Framework (if needed) and SeleniumLibrary.

To check the library installed:

```
python3 -m pip show robotframework-seleniumlibrary
```

You should see a **Name** and a **Version**. The numbers do not need to match anyone else’s.

---

## Step 3 — Run the live tests

Stay in the same folder and run:

```
python3 -m robot --outputdir results examples/registration-form
```

Chrome should open. The tests fill the form by themselves. Let them finish. Do not click in the Chrome window while they run.

You want a result similar to:

```
9 tests, 9 passed, 0 failed
```

Then open `results/report.html` the same way you did in Lesson 6.

---

## If Chrome does not start

| What you see | What to try |
| --- | --- |
| `WebDriverException` or `cannot find Chrome` | Install Google Chrome, close the terminal, open a new one, run the command again. |
| The window opens then closes too fast | That is normal when the tests finish. Open `results/log.html` to see what happened. |
| `robot: command not found` | Keep using `python3 -m robot`, not `robot`. |

---

## Optional: slow the clicks so you can watch

In [examples/registration-form/resources.robot](../examples/registration-form/resources.robot), you can add this line inside the keyword **Open The Registration Form**, just after `Open Browser`:

```
Set Selenium Speed    0.4 seconds
```

Save the file and run the tests again. Each click will pause a little.

---

## Check that you got it

You are ready for Lesson 11 when Chrome opened and you saw tests pass (or you opened the report and can see which ones ran).

**Next:** [Lesson 11 — Read the registration tests](11-registration-form.md)
