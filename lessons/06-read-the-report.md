# Lesson 6 — Read the report

**Time:** about 10 minutes  
**You will:** open the HTML report and find pass and fail  
**You need:** to have run a test at least once

---

## After every run, three files appear

Robot Framework writes them in the folder **where you ran the command**. If you ran the command from the main `robotFramework` folder, look there.

| File | Open this? | What it is |
| --- | --- | --- |
| `report.html` | Yes, start here | A short summary |
| `log.html` | Yes, if you want detail | Every step, in order |
| `output.xml` | Not yet | Data for other tools |

These files are **replaced** each time you run tests. That is normal. The newest run overwrites the previous one.

---

## Step 1 — Run a test if you have not just done so

```
robot examples/pass-and-fail/checks.robot
```

---

## Step 2 — Open the report

Find `report.html` in the folder and open it in your web browser.

Ways that work:

- Double-click the file
- Drag the file onto a browser window
- In Cursor, right-click the file and open it if your editor offers that

You do not need a website or a server. It is just a file on your computer.

---

## Step 3 — What to look at in `report.html`

At the top you will see totals, such as how many tests passed and failed.

Then a list of test names with **PASS** or **FAIL**.

Click a test name if you want more detail. The report is meant to be browsed, not memorized.

For the pass-and-fail example you should see:

- **The word cat is cat** — PASS
- **Apple is the same as orange** — FAIL

---

## Step 4 — Open `log.html` when you need the story

`log.html` is the long version. It shows each keyword (each step) and what happened.

Use the log when a test fails and you want to know **which line** went wrong.

You will often see the same `apple != orange` message there, next to `Should Be Equal`.

---

## A tidy habit (optional)

If the report files in the main folder feel messy, you can send them to their own folder:

```
robot --outputdir results examples/pass-and-fail/checks.robot
```

`--outputdir results` means “put report.html, log.html, and output.xml inside a folder named results.”

You can do this from Lesson 3 onward. It is optional.

---

## Check that you got it

You finished this lesson when you opened `report.html` in a browser and could point to a PASS and a FAIL.

**Next:** [Lesson 7 — Your own keywords](07-your-own-keywords.md)
