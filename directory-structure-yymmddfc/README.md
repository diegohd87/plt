# programming-logic-tests

The Situation

There are 2 million files in one directory. The files are of different types, which are reflected in the file names. 
The file naming convention is: AAxyz.ddmmyyFSRV.Z01, where: 
  - AA: file type code
  - xyz: arbitrary 3-digit code
  - ddmmyy: file date
  - FSRV.Z01: constant string, the same for all files

Sample file names in the directory:
FS123.010218FSRV.Z01

FS123.010318FSRV.Z01
FS123.010418FSRV.Z01
FS456.010218FSRV.Z01
FS456.010318FSRV.Z01
FS456.010418FSRV.Z01
TS123.010218FSRV.Z01
TS123.010318FSRV.Z01
TS123.010418FSRV.Z01
TS456.010218FSRV.Z01
TS456.010318FSRV.Z01
TS456.010418FSRV.Z01
RS123.010218FSRV.Z01
RS123.010318FSRV.Z01
RS123.010418FSRV.Z01
RS456.010218FSRV.Z01
RS456.010318FSRV.Z01
RS456.010418FSRV.Z01

The Task
Create a script in the scripting language of your choice which will perform the following tasks:

1. Create a target directory structure based on the dates included in the file names, by year by month by date by file type, for ex.:

- YY (first year)
    - MM (first month)
1. DD (first day)
    -   FS (file code)
    -   TS (file code)
    -   etc.
2.  DD (next day)
    - FS (file code)
    - TS (file code)
    - etc.
3. etc
    - MM (next month)
1. DD (first day)
    -   FS (file code)
    -   TS (file code)
    -   etc.
2.  DD (next day)
    - FS (file code)
    - TS (file code)
    - etc.
3. etc
- YY (next year)
    - MM (first month)
1. DD (first day)
    -   FS (file code)
    -   TS (file code)
    -   etc.
2.  DD (next day)
    - FS (file code)
    - TS (file code)
    - etc.
3. etc
    - MM (next month)
1. DD (first day)
    -   FS (file code)
    -   TS (file code)
    -   etc.
2.  DD (next day)
    - FS (file code)
    - TS (file code)
    - etc.
3. etc

2. Copy the files from the source directory to the target directories that were created at step 1 so that each file is copied to the directory created for the year, month, day and type of the file
3. Remove the files from the source directory once they are copied over to the target
4. Bonus: Implement a solution to record and verify that all files from the source directory were moved to the target directories and no file was lost.
