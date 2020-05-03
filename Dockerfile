FROM alpine

ENV PANDOC_VERSION 2.9.2.1

RUN wget https://github.com/jgm/pandoc/releases/download/$PANDOC_VERSION/pandoc-$PANDOC_VERSION-linux-amd64.tar.gz -O pandoc.tar.gz \
    && tar xvzf pandoc.tar.gz --strip-components 1 -C /usr/local/ \
    && rm pandoc.tar.gz

COPY footer.html footer.html
COPY styles.css styles.css
COPY leaf leaf
CMD cat > file.md                            \
    && ./leaf file.md output.html            \
    && cat output.html


