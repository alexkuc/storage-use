#!/bin/sh
function storage_use() { \
echo -e "\\nSTORAGE USE\\n"; \
shopt -s dotglob; \
unset c; \
for folder in */; \
do \
    if [ ! -L "${folder%/}" ]; \
        then c+="$(du $folder -sm)\\n"; \
    fi; \
done; \
shopt -u dotglob; \
c="$(echo -e "$c" | sort -rn)"; \
echo -e "$c"; \
echo -e ""; \
}

export -f storage_use;
