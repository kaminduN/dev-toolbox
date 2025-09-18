Using a Shell Script (Recommended for Bash):
Create a function or script in your ~/.bashrc or a separate script file that can be sourced. This allows for quick switching within your Bash sessions.

To use it:

    Open your ~/.bashrc file (or create it if it doesn't exist).
    Paste the setjdk function into the file.
    Adjust the JDK_PATH values: to match the actual installation paths of your JDK versions on your Windows system. Remember to use forward slashes in Bash paths.
    Save the file.
    Open a new Bash terminal or run source ~/.bashrc in your current terminal to load the function.
    Now, you can switch by typing setjdk 8, setjdk 11, etc.
