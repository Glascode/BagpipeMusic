# Bagpipe music

Bagpipe tunes, written with Lilypond.

## Getting Started

### Prerequisites

- [Node.js 10.13](https://nodejs.org/) or later
- [Lilypond 2.18.2](https://lilypond.org/)

Before downloading Lilypond, please read about the [text input](http://lilypond.org/text-input.html).

### Installing LilyPond

You must [download](http://lilypond.org/download.html) Lilypond before doing any of the following.

## Using LilyPond with macOS

### Setting the lilypond command

In order to use the `lilypond` command, export the right path as follows  (it must match with the location of your LilyPond.app file):

```bash
export PATH="$PATH:$HOME/Applications/LilyPond.app/Contents/Resources/bin"
```

### Compiling a LilyPond file

Run the `lilypond` command to make LilyPond compile the `.ly` file:

```
lilypond file_name.ly
```

It will compile the source file and create a `.pdf` file.

### Compiling with Sublime Text

In order to make the compilation easier with Sublime Text, I created a new **Build System** for Lilypond containing:

```json
{
    "shell_cmd": "lilypond $file",
    "selector": "source.lilypond"
}
```

### Syntax highlighting with vim

In case you are writing with the vim editor, you can add these lines to your `.vimrc` file to enable syntax highlighting for Lilypond:

```vim
filetype off
set runtimepath+=~/Applications/LilyPond.app/Contents/Resources/share/lilypond/current/vim
filetype on
```
