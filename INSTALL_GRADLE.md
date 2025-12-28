# How to Fix Gradle Error on Windows

## The Problem
```
Could not find an installed version of Gradle either in Android Studio,
or on your system to install the gradle wrapper.
```

## Solution: Install Gradle

### Option 1: Install Gradle Manually (Recommended)

1. **Download Gradle:**
   - Go to: https://gradle.org/releases/
   - Download: **Gradle 8.3** or **8.4** (Binary-only distribution)
   - Direct link: https://gradle.org/next-steps/?version=8.3&format=bin

2. **Extract Gradle:**
   - Extract the ZIP file to: `C:\gradle\gradle-8.3`
   - (You can use any location, but `C:\gradle` is common)

3. **Add Gradle to PATH:**
   - Press `Win + R`, type `sysdm.cpl`, press Enter
   - Go to **Advanced** tab → Click **Environment Variables**
   - Under **System variables**, select **Path** → Click **Edit**
   - Click **New** → Add: `C:\gradle\gradle-8.3\bin`
   - Click **OK** on all dialogs

4. **Restart your terminal/Git Bash**

5. **Verify installation:**
   ```bash
   gradle -v
   ```
   You should see Gradle version information.

### Option 2: Let Cordova Download Gradle Wrapper (Automatic)

Cordova should automatically download Gradle wrapper on first build, but sometimes it fails. Try this:

1. **Set environment variables** (run in your terminal):
   ```bash
   export ANDROID_HOME="$LOCALAPPDATA/Android/Sdk"
   export ANDROID_SDK_ROOT="$LOCALAPPDATA/Android/Sdk"
   ```

2. **Try building again:**
   ```bash
   cd moodleapp
   source setup-windows-env.sh
   npx ionic cordova build android
   ```

   Cordova will download Gradle wrapper automatically to `platforms/android/gradle/wrapper/`

### Option 3: Use Android Studio's Gradle

If Android Studio is installed, Gradle might be in:
- `C:\Users\YourName\.gradle\wrapper\dists\gradle-8.x-bin\...`

You can add that path to your PATH, but it's easier to just install Gradle manually (Option 1).

## Make Environment Variables Permanent

Add these to your `~/.bashrc` (for Git Bash):

```bash
export ANDROID_HOME="$LOCALAPPDATA/Android/Sdk"
export ANDROID_SDK_ROOT="$LOCALAPPDATA/Android/Sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$PATH"
```

Then restart your terminal.

## Quick Test

After installing Gradle, test it:

```bash
# Check Gradle
gradle -v

# Check Android environment
cd moodleapp
source setup-windows-env.sh
npx ionic cordova requirements android

# Try building
npx ionic cordova build android
```

## Troubleshooting

If Gradle still isn't found after installation:

1. **Verify PATH:**
   ```bash
   echo $PATH | grep gradle
   ```

2. **Check if Gradle is accessible:**
   ```bash
   which gradle
   # or
   where gradle
   ```

3. **Try full path:**
   ```bash
   C:/gradle/gradle-8.3/bin/gradle -v
   ```

If this works, your PATH isn't set correctly.

