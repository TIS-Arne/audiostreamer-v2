#!/bin/bash
set -e

if [ $# -ne 2 ]; then
	echo "Usage: <full qemu path> <staging dir>"
	exit 2
fi

QEMU="$1"
STAGING_DIR="$2"
OUT="$STAGING_DIR/usr/bin/ldd-cross"

cat > "$OUT"<<'EOF'
#! /bin/bash

set -e

EOF
echo "QEMU=\"$QEMU\"" >> "$OUT"
eval "$(grep ^RTLDLIST= $STAGING_DIR/usr/bin/ldd)"

echo -n 'RTLDLIST="' >> "$OUT"
for RTLD in $RTLDLIST; do
	echo -n "$STAGING_DIR$RTLD " >> "$OUT"
done
echo '"' >> "$OUT"
echo >> "$OUT"

cat >> "$OUT"<<'EOF'
for file do
  case $file in
  */*) :
       ;;
  *) file=./$file
     ;;
  esac
  for RTLD in ${RTLDLIST}; do
    if test -x $RTLD; then
      "$QEMU" "$RTLD" --list "$file"
    fi
  done
done
EOF

chmod +x "$OUT"
echo "Wrote: $OUT"
