if type -q java
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
    set -x PATH $PATH $JAVA_HOME/bin
end
