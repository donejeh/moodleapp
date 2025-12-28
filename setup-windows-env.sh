#!/bin/bash
# Git Bash script to set up Android environment variables
# Source this file: source setup-windows-env.sh

export ANDROID_HOME="$LOCALAPPDATA/Android/Sdk"
export ANDROID_SDK_ROOT="$LOCALAPPDATA/Android/Sdk"

# Add Gradle to PATH (if installed)
if [ -d "/c/gradle/gradle-8.3/bin" ]; then
    export PATH="/c/gradle/gradle-8.3/bin:$PATH"
fi

# Add Android SDK tools to PATH
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$PATH"

echo "ANDROID_HOME set to: $ANDROID_HOME"
echo "ANDROID_SDK_ROOT set to: $ANDROID_HOME"
echo ""
echo "Environment variables set for this session."
echo "To make permanent, add these to your ~/.bashrc:"
echo "  export ANDROID_HOME=\"\$LOCALAPPDATA/Android/Sdk\""
echo "  export ANDROID_SDK_ROOT=\"\$LOCALAPPDATA/Android/Sdk\""
echo "  export PATH=\"/c/gradle/gradle-8.3/bin:\$PATH\""
echo "  export PATH=\"\$ANDROID_HOME/platform-tools:\$ANDROID_HOME/tools:\$ANDROID_HOME/tools/bin:\$PATH\""

