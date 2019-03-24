# display_4607
Utility for displaying the fields of a Stanag 4607 file as text. It uses the s4607 library to convert the supplied file from binary form and display the contents of each decoded packet in text form. This is done using the display/1 functions that the s4607 library supplies. The main use for this utility is debugging data format/decoding/encoding issues.

## Building
    $ rebar3 escriptize

## Running
Supply the file to display as an argument to the program:
    $ _build/default/bin/display_4607 filename.4607

