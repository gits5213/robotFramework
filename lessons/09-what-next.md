# Lesson 9 — What to learn next

**Time:** about 10 minutes  
**You will:** know a safe path after this beginner course

You now know the core loop:

1. Write steps in a `.robot` file
2. Run `robot ...`
3. Read PASS / FAIL
4. Open `report.html`

That loop does not change when tests get bigger. Only the keywords get more specific.

---

## Practice ideas (still no browser)

Stay in this folder and invent tiny tests:

- A test that checks two matching names with `Should Be Equal`
- A test that is **supposed** to fail, so you stay calm when you see red
- Your own keywords for a daily routine (“Start the day”, “Pack a bag”)
- Variables for a person, a city, and a message

If you can do those, you understand Robot Framework’s shape.

---

## When you are ready for a website

Real teams often use Robot Framework to click through a website.

That needs **one extra library**, such as:

- **Browser** (newer, uses Playwright)
- **SeleniumLibrary** (very common, uses Selenium)

Those tools install a browser driver and are a bit more setup. Skip them until the lessons in this folder feel easy.

A web test, in spirit, still looks like English:

```
Open the shop website
Type    username    sam
Type    password    secret
Click    Sign in
The page should contain    Welcome
```

Same idea as Lesson 1. Different keywords.

When you get there, use the official docs (links below) rather than guessing install steps.

---

## Official places to look

These are the real manuals. They are more technical than this folder. Use them as reference, not as your first class.

- Robot Framework user guide: [https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- Built-in keywords (Log, Should Be Equal, and friends): [https://robotframework.org/robotframework/#standard-libraries](https://robotframework.org/robotframework/#standard-libraries)
- Project homepage: [https://robotframework.org/](https://robotframework.org/)

---

## Files to keep using

| File | Use it for |
| --- | --- |
| [README.md](../README.md) | The lesson list |
| [cheatsheet.md](../cheatsheet.md) | Commands and spacing |
| [glossary.md](../glossary.md) | Word meanings |
| `examples/` | Copy-and-run practice |

---

## You are done with the beginner path

If you have run the four example files and opened a report, you have finished this guide.

Come back to Lesson 4 whenever a file looks noisy. Spacing and headings cause most early confusion. That is normal.
