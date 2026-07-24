## 0.0.6

* feat: migrate to Built-in Kotlin (KGP in buildscript.classpath instead of plugins block)
* chore: convert build.gradle to Kotlin DSL (build.gradle.kts)
* chore: bump compileSdk to 36
* fix: move outputs.upToDateWhen outside testLogging block (Kotlin DSL compatibility)

## 0.0.5

* chore: update AGP to 9.2.1, Kotlin to 2.4.10, Gradle to 9.4.1
* refactor: use declarative Kotlin plugin instead of legacy implicit resolution

## 0.0.4

* feat: migrate to Built-in Kotlin
* chore: update AGP to 8.11.1
* chore: add jvmToolchain(17) for consistent JVM target

## 0.0.3

* fix: duplicate import

## 0.0.2

* fix: call method clearClipboard on old versions devices are not supported.

## 0.0.1

* initial release.
