_list:
    just -l

install-deps-ubuntu:
    hash pandoc 2>/dev/null || apt install -y pandoc
    hash latex xetex 2>/dev/null || apt install -y texlive-xetex texlive-latex-recommended
    cargo install mdbook@0.4.41 mdbook-katex@0.9.1 mdbook-pandoc@0.7.3 mdbook-pdf@0.1.10 mdbook-image-size@0.2.1 mdbook-toc@0.14.2

build:
    cd mdbook && mdbook build

watch:
    cd mdbook && mdbook watch -o
