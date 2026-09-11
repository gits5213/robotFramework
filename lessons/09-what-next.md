# Lesson 9 — What to learn next

**Time:** about 10 minutes  
**You will:** know a safe path after this beginner course

You now know the core loop:

1. Write steps in a `.robot` file
2. Run `python3 -m robot ...`
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

## The live website in this folder

After Lesson 8, continue with:

- [Lesson 10 — Test a real web page](10-browser-testing.md)
- [Lesson 11 — The live registration form](11-registration-form.md)

Those lessons automate this practice page:

[https://gitsuniversity.org/practice/registration-form/](https://gitsuniversity.org/practice/registration-form/)

Run them with:

```
python3 -m robot --outputdir results examples/registration-form
```

---

## API tests in this folder

After the website lessons, or instead of Chrome if you want a quieter path:

- [Lesson 12 — What is an API?](12-what-is-an-api.md)
- [Lesson 13 — Run the API tests](13-api-tests.md)

Those lessons call the same kind of endpoints listed in the GITS API Practice Center:

[https://gitsuniversity.org/practice/api-examples/](https://gitsuniversity.org/practice/api-examples/)

Run them with:

```
python3 -m robot --outputdir results examples/api
```

No browser window opens.

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

If you have run the example files, opened a report, and (when ready) run the registration form tests and the API tests, you have finished this guide.

Come back to Lesson 4 whenever a file looks noisy. Spacing and headings cause most early confusion. That is normal.
