#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    echo "Processing $f file..."
    echo "file Size:$SIZE"
    WORD="$(cat $f|wc -w)"
    echo "WORD COUNT: $WORD"

  fi
done

