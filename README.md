# Cuckoo Demo

## Introduction
Cuckoo is a mocking framework for Swift projects.

The main advantage is that it generates mocks straight from source code, which speeds up development time and makes writing tests much more enjoyable.

[See also the Cuckoo homepage](https://github.com/Brightify/Cuckoo)

## Project structure
Cuckoo is added via Cocoapods.

It is invoked from the `Scripts/run_cuckoo.sh`, because it's sometimes convenient to be able to run it even if the Xcode project fails to build.

`run_cuckoo.sh` is added as a main target run script phase. This helps to keep mocks and test code up to date when doing extensive development.

## `run_cuckoo.sh`
Needs minimal editing to set directories up when adding to a new project.

It searches the project for swift files containing `// cuckoo: generate`. All files containing the string get passed to the cuckoo script.

For `swiftlint: disable all` and `swiftformat: disable all` are also added to the generated file, so Xcode warnings are supressed and no formatting is done on the file.


## Using Cuckoo output in tests

Using a wrapper helps avoiding `import Cuckoo` in all the test files and also setup code can be reused.

## Acknowledgements

Thank you to all the cuckoo contributors for your great work!