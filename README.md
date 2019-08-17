## Environment set up - WINDOW 10

```
1. Install Python - https://www.python.org/downloads/
2. Install Robot Framework - pip install robotframework
3. Install Selenium Library - pip install --upgrade robotframework-seleniumlibrary
4. Install ChromeDriver
	Go to https://chromedriver.chromium.org/downloads to download ChromDriver
	Extract file and copy into python folder (C:\Users\{user name}\AppData\Local\Programs\Python\Python36-32)
5. Run the tests
	robot --variable env:production --loglevel TRACE -i regression --outputdir testreports {PATH TO REPO}\RobotFramework\web\testcases\go_bear\
```