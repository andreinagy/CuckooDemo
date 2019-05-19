#!/bin/sh

# Use this string in files you want cuckoo to generate mocks for.
GENERATE_TAG="// cuckoo: generate"

# Set these up on first use.
PROJECT_NAME="CuckooDemo"
PROJECT_TEST_NAME="CuckooDemoTests"

PROJECT_DIR="."
PODS_ROOT="Pods"
OUTPUT_FILE="$PROJECT_DIR/${PROJECT_TEST_NAME}/Generated/CuckooGenerated.swift"
INPUT_DIR="${PROJECT_DIR}/${PROJECT_NAME}"

# Better to delete the OUTPUT_FILE and start from scratch every time.
rm $OUTPUT_FILE

# Xcode build log info
echo "Running $0;
INPUT_DIR=$INPUT_DIR
OUTPUT_FILE=$OUTPUT_FILE"

# Find all files containing the GENERATE_TAG string.
INPUT_FILES=$(grep -Rl --include=*.swift "$GENERATE_TAG" .)
#echo $INPUT_FILES

# Generate the mocks file.
"${PODS_ROOT}/Cuckoo/run" generate --no-timestamp --testable "$PROJECT_NAME" \
--output "${OUTPUT_FILE}" $INPUT_FILES

# After running once, locate `GeneratedMocks.swift` and drag it into your Xcode test target group.

# disable swiftformat and swiftlint on generated file.
echo "// swiftlint:disable all
// swiftformat:disable all
$(cat $OUTPUT_FILE)
// swiftformat:enable all
// swiftlint:enable all" > $OUTPUT_FILE

# nuke all GENERATE_TAG strings that cuckoo copies from the original files.
sed -i '' "s@$GENERATE_TAG@@g" "$OUTPUT_FILE"
