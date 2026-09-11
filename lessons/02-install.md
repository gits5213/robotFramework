# Lesson 2 — Install the tools

**Time:** about 20 minutes  
**You will:** install Python and Robot Framework  
**You need:** internet, and permission to install programs on this computer

---

## What you are installing (and why)

You need two things:

1. **Python** — the engine in the background. You will barely look at it.
2. **Robot Framework** — the tool that reads your `.robot` files.

If Python is already installed, you only do the second part.

Chrome and SeleniumLibrary come later, in [Lesson 10](10-browser-testing.md), when you test a real web page.

---

## Step 1 — Open a terminal

A **terminal** is a window where you type a command and press Enter. It is not a website.

- **Mac:** open **Terminal** (search for it with Command-Space).
- **Windows:** open **Command Prompt** or **PowerShell**.

You should see a blinking cursor. That is the right place.

---

## Step 2 — See if Python is already there

Type this and press Enter:

```
python3 --version
```

On some Windows computers this works instead:

```
python --version
```

**Good result:** a line like `Python 3.12.1` (any 3.8 or newer is fine).  
**Not installed:** an error such as “command not found” or “not recognized”.

### If Python is missing

1. Go to [https://www.python.org/downloads/](https://www.python.org/downloads/).
2. Download the installer for your computer.
3. Run it.
4. **Windows only:** on the first screen, tick **Add python.exe to PATH**.
5. Finish the installer, **close the terminal**, open a new one, and run `python3 --version` (or `python --version`) again.

---

## Step 3 — Install Robot Framework

In the same terminal, type **one** of these, then press Enter.

If `python3` worked:

```
python3 -m pip install robotframework
```

If only `python` worked:

```
python -m pip install robotframework
```

Wait until it finishes. You should see words like `Successfully installed`.

If it asks “Do you want to continue?” type `y` and press Enter.

---

## Step 4 — Prove it worked

On this Mac, use:

```
python3 -m robot --version
```

**Good result:** a line similar to:

```
Robot Framework 7.4.2 (Python 3.11.0 on darwin)
```

The numbers do not need to match. Seeing `Robot Framework` is enough.

Do **not** type `robot` by itself. You will get `command not found`. That does not mean the install failed. Use `python3 -m robot` every time.

To run a test later, the pattern is:

```
python3 -m robot examples/first-test/hello.robot
```

---

## Step 5 (optional) — Install from this folder

This folder includes a small file named `requirements.txt`. After you have Python, you can also install like this.

1. In the terminal, move into this folder. Example on a Mac:

   ```
   cd ~/Desktop/toGithub/robotFramework
   ```

2. Then:

   ```
   python3 -m pip install -r requirements.txt
   ```

That installs the same tool: Robot Framework.

---

## Where you will edit files

You are already in **Cursor**. That is a good place to open `.robot` files.

You do not need another editor for this course.

---

## Check that you got it

You are ready for Lesson 3 when:

- `python3 --version` prints a Python 3 version
- `python3 -m robot --version` prints Robot Framework

**Next:** [Lesson 3 — Your first test](03-first-test.md)
