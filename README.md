Basic LFI Challenge Write-Up

Challenge Overview
Name: Basic LFI Challenge
Category: Web Exploitation
Difficulty: Easy
Description: This challenge tests your ability to exploit a Local File Inclusion (LFI) vulnerability in a web application. The objective is to retrieve the hidden flag from the server.

Objectives
Exploit the LFI vulnerability in the example.php file to read the flag.txt file.

Tools Required
Web browser
Basic knowledge of web server file structure

Solution Steps
Step 1: Explore the Application
Access the web application through the provided URL: http://localhost:8080. You will find a simple landing page (index.html) that links to example.php.

Step 2: Investigate the Vulnerability
Navigate to the vulnerable PHP page by clicking the link or directly visiting: http://localhost:8080/example.php?file=home.html This page includes files based on a user-supplied file parameter, which is vulnerable to Local File Inclusion.

Step 3: Exploit the LFI
To exploit the vulnerability and read the contents of flag.txt, manipulate the file parameter to traverse the directory: http://localhost:8080/example.php?file=../flag.txt

Step 4: Capture the Flag
If the LFI exploit is successful, the content of flag.txt should be displayed on your browser. This content is the flag you need to submit to complete the challenge.

Flag
flag{SepalAI_CTF_2024_secretkey}

Notes
LFI: Local File Inclusion vulnerabilities occur when user input is used to include files in the application, allowing attackers to read sensitive files.
Mitigation: Always sanitize user inputs to prevent path traversal and restrict file inclusion to trusted files only.

