if type -q java
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
    fish_add_path $JAVA_HOME/bin
end
