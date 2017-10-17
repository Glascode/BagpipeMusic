# Bagpipe Music with Lilypond

## Installing Lilypond

Before downloading Lilypond, please read about the [text input](http://lilypond.org/text-input.html).

You must [download](http://lilypond.org/download.html) Lilypond before doing any of the following.

## Using Lilypond with macOS (the way I use it)

### Lilypond script file

1. First of all, modify the **`lilypond`** script to set the path of your Lilypond application location.

2. Make the file executable with: `chmod u+x lilypond`

### Make a PDF from a .ly file

Run the `lilypond` script to make LilyPond compile the `.ly` file. For example :

```
lilypond <file_name.ly>
```

It will automatically compile the source file into a `.pdf` file. 
