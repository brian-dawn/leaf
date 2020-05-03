# leaf

A tool for generating standalone HTML articles/blog posts from markdown that are [designed to last](https://jeffhuang.com/designed_to_last/).

Hosted on [SourceHut](https://git.sr.ht/~brian-dawn/leaf) but also hosted on [Github](https://github.com/brian-dawn/leaf) for convenience. If you're curious why SourceHut is neat check out [this](https://sourcehut.org/blog/2019-10-23-srht-puts-users-first/).

## Features

* Pure self contained HTML/CSS. Even images get base64 encoded and embedded into the resulting HTML. This makes it really easy to share or host the page.
* Support for dark and light color preferences (using the CSS prefers dark/light media selectors).


## Usage (docker)

If you want to use a prebuilt image all you need to do is run:

    cat blogpost.md | docker run -i briandawn/leaf > blogpost.html

If you want to customize the footer or css first build the docker image, you only need to do this once.

    docker build -t leaf .

Now you can stamp out pages with:

    cat blogpost.md | docker run -i leaf > blogpost.html

## Usage (not docker)

If you don't want to use docker, all you need is [pandoc](https://pandoc.org/installing.html). From this repo run:

    ./leaf blogpost.md blogpost.html

