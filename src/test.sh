#!/bin/bash

#src/test.sh
EXPECTED="welcome, Test!"

# تعديل المسار لـ './test' لأننا بننفذ السكريبت من جوه فولدر src والملف اسمه test.js
OUTPUT=$(node -e "console.log(require('./test')('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "✅ Test passed!"
    exit 0
else
    echo "❌ Test failed! Expected '$EXPECTED' but got '$OUTPUT'"
    exit 1
fi