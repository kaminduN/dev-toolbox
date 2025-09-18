# Add this to your ~/.bashrc or a separate script file (e.g., jdk_switcher.sh)
function setjdk() {
    if [ -z "$1" ]; then
        echo "Usage: setjdk <version>"
        echo "Available versions:"
        ls /c/Program\ Files/Java/ | grep -E "jdk|jre" # Adjust path if needed
        return 1
    fi

    local JDK_PATH=""
    case "$1" in
        8) JDK_PATH="/c/Program Files/Java/jdk1.8.0_XXX" ;; # Replace XXX with your specific version
        11) JDK_PATH="/c/Program Files/Java/jdk-11.0.X" ;; # Replace X with your specific version
        17) JDK_PATH="/c/Program Files/Java/jdk-17.0.X" ;;
        *)
            echo "Unsupported JDK version: $1"
            echo "Available versions:"
            ls /c/Program\ Files/Java/ | grep -E "jdk|jre"
            return 1
            ;;
    esac

    if [ ! -d "$JDK_PATH" ]; then
        echo "JDK path not found: $JDK_PATH"
        return 1
    fi

    export JAVA_HOME="$JDK_PATH"
    export PATH="$JAVA_HOME/bin:$PATH"
    echo "JAVA_HOME set to: $JAVA_HOME"
    java -version
}

# If using a separate script, source it in your ~/.bashrc:
# source ~/jdk_switcher.sh
