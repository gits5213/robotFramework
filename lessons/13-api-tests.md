# Lesson 13 — Run the API tests

**Time:** about 15 minutes  
**You will:** install the API library and run live API tests  
**You need:** Lesson 12, internet. Chrome is **not** required.

---

## What you are installing

**RequestsLibrary** is a pack of steps for sending messages to a server.

Think of it as the API version of SeleniumLibrary. SeleniumLibrary clicks a page. RequestsLibrary sends GET and POST.

---

## Step 1 — Install the library

In the terminal, go to this guide’s folder, then run:

```
cd ~/Desktop/toGithub/robotFramework
python3 -m pip install -r requirements.txt
```

That also keeps Robot Framework and SeleniumLibrary up to date.

To check this library installed:

```
python3 -m pip show robotframework-requests
```

You should see a **Name** and a **Version**.

---

## Step 2 — Run the live API tests

```
python3 -m robot --outputdir results examples/api
```

No Chrome window will open. That is correct.

You want a result similar to:

```
8 tests, 8 passed, 0 failed
```

Then open `results/report.html`.

---

## What the tests check

Open [examples/api/api_tests.robot](../examples/api/api_tests.robot).

| Test | What it proves |
| --- | --- |
| Httpbin get is healthy | `GET /get` returns 200 |
| Httpbin get echoes the course name | The server repeats `course=robot` |
| Httpbin json returns a slideshow | `GET /json` has a title and author |
| Httpbin missing page returns 404 | A missing path can still be a passing test |
| Httpbin post echoes the student name | `POST /post` sends John / Doe back |
| Jsonplaceholder returns the first user | User 1 is Leanne Graham |
| Jsonplaceholder missing user returns 404 | User 9999 is not there |
| Jsonplaceholder create post returns 201 | A new post is accepted |

httpbin is the service behind the GITS list at [https://gitsuniversity.org/practice/api-examples/](https://gitsuniversity.org/practice/api-examples/).

---

## How one API step looks

```
${response}=    GET    https://httpbin.org/get    expected_status=200
```

In everyday words:

- `GET` means “ask for this”
- the web address is where we ask
- `expected_status=200` means “I want OK”
- `${response}` is the reply, saved in a box

Then we read the facts inside the reply:

```
${body}=    Set Variable    ${response.json()}
Should Be Equal    ${body}[args][course]    robot
```

`${response.json()}` means “the reply as a list of labeled facts.”  
`${body}[args][course]` means “the course value inside that reply.”

---

## Try it yourself

In `api_tests.robot`, find:

```
params=course=robot
```

Change `robot` to your first name in **both** the request and the `Should Be Equal` line. Save, then run the same command again.

---

## If something goes wrong

| What you see | What to try |
| --- | --- |
| `No keyword named 'GET'` | Run `python3 -m pip install -r requirements.txt` again. |
| Timeout or connection error | Check your internet. Run the command once more. httpbin can be slow. |
| `robot: command not found` | Keep using `python3 -m robot`. |

---

## Run one test only

```
python3 -m robot --outputdir results -t "Httpbin get is healthy" examples/api
```

---

## Check that you got it

You finished this lesson when:

- the API tests ran without Chrome
- you can point to a GET test and a POST test
- you know 404 can be a **pass** if you expected it

**Next:** [Lesson 9 — What to learn next](09-what-next.md) (optional wrap-up)
