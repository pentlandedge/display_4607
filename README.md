# display_4607
Utility for displaying the fields of a Stanag 4607 file as text. It uses the s4607 library to convert the supplied file from binary form and display the contents of each decoded packet in text form. This is done using the display/1 functions that the s4607 library supplies. The main use for this utility is debugging data format/decoding/encoding issues.

## Prerequisites
The following must be installed:
1. A recent version of Erlang.
2. The rebar3 build tool.

## Building
```
$ rebar3 escriptize
```

## Running
Supply the file to display as an argument to the program:
```
$ _build/default/bin/display_4607 filename.4607
```
This should generate text output which should begin in a similar manner as the following snippet, which shows the first part of the first packet header: 
```
****************************************
** @pheader
Version: 3.0
Packet size: 76 
Nationality: "UK"
Classification: unclassified
Classification System: "UK"
Packet code: none
Exercise Indication: exercise_simulated
...
```
