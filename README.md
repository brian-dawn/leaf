# leaf

A tool for generating standalone HTML articles/blog posts from markdown that are [designed to last](https://jeffhuang.com/designed_to_last/).

## Requirements

    * [pandoc](https://pandoc.org/installing.html)
    * Alternatively you can just use the docker image.

## Usage (docker)

First build the docker image, you only need to do this once. If you want to change the footer or the css you'll need to re-run it though:

    docker build -t leaf .

Now you can stamp out pages with:

    cat blogpost.md | docker run -i leaf > blogpost.html

## Usage (not docker)

From this repo run:

    ./leaf blogpost.md blogpost.html

## Features

    * Pure self contained HTML/CSS. Even images get base64 encoded and embedded into the resulting HTML. This makes it really easy to share or host the page.
    * Support for dark and light color preferences (using the CSS prefers dark/light media selectors).

