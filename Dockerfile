FROM pandoc/core

COPY footer.html footer.html
COPY styles.css styles.css
COPY leaf leaf
CMD cat > file.md                            \
    && ./leaf file.md output.html            \
    && cat output.html


