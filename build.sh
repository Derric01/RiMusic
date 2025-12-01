#!/bin/bash

# RiMusic Build Script
# This script helps build RiMusic APK files

echo "🎵 RiMusic Fork - Build Script"
echo "==============================="

# Check if Java is installed
if ! command -v java &> /dev/null; then
    echo "❌ Java is not installed or not in PATH"
    echo "Please install JDK 11 or higher"
    exit 1
fi

echo "✅ Java version:"
java -version

# Check if Android SDK is available
if [ -z "$ANDROID_HOME" ]; then
    echo "⚠️  ANDROID_HOME not set. Please set it to your Android SDK path"
    echo "Example: export ANDROID_HOME=/path/to/android-sdk"
fi

echo ""
echo "🔨 Building RiMusic..."
echo ""

# Clean previous builds
echo "🧹 Cleaning previous builds..."
./gradlew clean

# Build debug APK
echo "🔨 Building debug APK..."
./gradlew assembleDebug

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Build successful!"
    echo "📱 APK location: composeApp/build/outputs/apk/debug/"
    echo ""
    echo "To install on connected device, run:"
    echo "   ./gradlew installDebug"
    echo ""
    echo "To build release APK, run:"
    echo "   ./gradlew assembleRelease"
else
    echo ""
    echo "❌ Build failed!"
    echo "Please check the error messages above and fix any issues."
    echo ""
    echo "Common issues:"
    echo "- Make sure Android SDK is installed and ANDROID_HOME is set"
    echo "- Ensure you have the required Android SDK versions"
    echo "- Check that all dependencies are available"
fi