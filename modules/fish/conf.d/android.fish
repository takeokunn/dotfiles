if test -d $HOME/Library/Android/Sdk
    set -x ANDROID_HOME $HOME/Library/Android/Sdk
    fish_add_path $ANDROID_HOME/emulator
    fish_add_path $ANDROID_HOME/tools
    fish_add_path $ANDROID_HOME/tools/bin
    fish_add_path $ANDROID_HOME/platform-tools
end
