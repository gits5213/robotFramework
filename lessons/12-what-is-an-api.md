# Lesson 12 — What is an API?

**Time:** about 10 minutes  
**You will:** explain an API in everyday words  
**You need:** Lessons 1–8. Chrome is **not** required.

---

## The simple version

A **website** is what you see: buttons, boxes, colors.

An **API** is the same work done as a **message**.

You send a short request (“give me user 1”).  
The server sends a short reply (a list of facts about that user).  
There is no page to look at. The test reads the reply.

---

## A kitchen picture

In Lesson 1, a test was a recipe.

An API is more like **calling the kitchen on the phone**:

1. You ask for a cup of tea.
2. The kitchen answers “OK” and describes the tea.
3. You never walk into the kitchen.

Robot Framework can make that phone call and check the answer.

---

## Two words you will see

**GET** means “please send me this information.”  
Example: “Give me user 1.”

**POST** means “please take this new information.”  
Example: “Here is a new student’s first name and last name.”

---

## Status codes (the short reply number)

The server always includes a number.

| Number | Everyday meaning |
| --- | --- |
| **200** | OK. Here is what you asked for. |
| **201** | Created. I accepted the new thing. |
| **404** | Not found. That item is not here. |

A test can **expect** 404. That is still a pass, because you asked: “Is this missing?” and the server said yes.

---

## Why testers use APIs

- No Chrome window. Faster and quieter.
- You check the facts, not the colors.
- The GITS API Practice Center uses the same idea: [https://gitsuniversity.org/practice/api-examples/](https://gitsuniversity.org/practice/api-examples/)

That practice list is powered by [httpbin.org](https://httpbin.org). The tests in this folder call httpbin, plus one extra practice API for users and posts.

---

## Check that you got it

You should be able to say:

> An API test sends a message and checks the reply. GET asks for data. POST sends new data. 200 means OK.

**Next:** [Lesson 13 — Run the API tests](13-api-tests.md)
