if test -d $HOME/Library/Android/Sdk
    set -x ANDROID_HOME $HOME/Library/Android/Sdk
    set -x PATH $PATH $ANDROID_HOME/emulator
    set -x PATH $PATH $ANDROID_HOME/tools
    set -x PATH $PATH $ANDROID_HOME/tools/bin
    set -x PATH $PATH $ANDROID_HOME/platform-tools
    # set -x ANDROID_SDK_ROOT $HOME/Library/Android/Sdk
    # set -x ANDROID_AVD_HOME $HOME/.android
end
