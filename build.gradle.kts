plugins {
    id("java")
}

group = "org.pet"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation("com.intuit.karate:karate-junit5:1.2.0.RC4")
}

tasks.test {
    useJUnitPlatform()
}