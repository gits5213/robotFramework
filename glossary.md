# Glossary (plain English)

Use this page when a word feels technical. Come back as often as you need.

**Argument**  
Extra information you give a step. In `Log    Hello`, the word `Hello` is the argument.

**Command**  
A short instruction you type in the terminal, then press Enter. Example: `python3 -m robot --version`.

**Fail**  
The test found a problem. The result is red. This is useful. It means “look here.”

**Keyword**  
One step in the checklist, written in English. Examples: `Log`, `Should Be Equal`. You can also invent your own.

**API**  
A way to send a message to a server and get a reply, without opening a web page. Lessons 12–13 test APIs.

**GET**  
An API request that means “please send me this information.”

**JSON**  
The common shape of an API reply: labeled facts, such as `"name": "Leanne Graham"`.

**Library**  
A bundle of ready-made keywords. The **BuiltIn** library is included automatically. **SeleniumLibrary** opens Chrome (Lessons 10–11). **RequestsLibrary** sends API messages (Lessons 12–13).

**Locator**  
How a test finds a box or button on a page. In this guide you will see locators like `id=registration-form-email-input`.

**POST**  
An API request that means “please take this new information.”

**Pass**  
The test did what you asked, and the checks were true. The result is green.

**Status code**  
A number in the API reply. **200** means OK. **201** means created. **404** means not found.

**pip**  
The tool that installs Python packages. You use it once to install Robot Framework.

**Python**  
A programming language. Robot Framework needs it in the background. You do not need to write Python for these lessons.

**Report**  
An HTML page Robot Framework creates after a run. Open `report.html` in a browser to see what passed and what failed.

**Robot Framework**  
A tool that runs tests written in a simple, English-like style.

**Settings**  
The top part of a `.robot` file. You can put a short description there.

**Terminal**  
A window where you type commands. On a Mac it is called **Terminal**. On Windows it is **Command Prompt** or **PowerShell**. It is not a website.

**Test case**  
One complete check, with a name. Example: `Say hello`.

**Test suite**  
A `.robot` file that contains one or more test cases.

**Variable**  
A labeled box that holds a value, like `${CUSTOMER}` holding `Sam`. You write the name, Robot Framework fills in the value.

**.robot file**  
A text file with the steps of your tests. You can open it in Cursor, like any other file.
