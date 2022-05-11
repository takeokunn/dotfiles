if type -q java
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home
    set -x JAVA_CMD $JAVA_HOME/bin/java
    fish_add_path $JAVA_HOME/bin
end
