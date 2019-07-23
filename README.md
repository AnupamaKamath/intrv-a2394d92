Programming exercise for potential Database Developer/ETL Developer positions

# Introduction

The purpose of this exercise is to evaluate a candidate's proficiency in the following areas:

1. SQL/Database knowledge
2. ETL terminology, understanding and application
3. Pentaho Data Integration (aka Hitachi Vantara aka Kettle)
3. git and GitHub familiarity

# Exercise

Start by cloning this repo locally so you can submit your development as a PR at the end.

## Load

Using PDI (preferably [version 7.1](https://sourceforge.net/projects/pentaho/files/Data%20Integration/)) create a Transformation that loads the following files to a SQLite database named output.db:

1. test1.txt
2. test2.txt

Name your transformation `Import_Baseball_Data.ktr`

## Report Output

Create a transformation named `Output_Reports.ktr` that exports a pipe-delimited text file for each of the report requests listed below.

### Report 1: Extended Data 

Spec: This should include all player data with the player's team's ballpark name and address.

Output Filename: extended_data.txt

E.g. one record of the resultset would look like this:

```
+-------------------------------------------------------------------------------------------------+
| Adam Donachie | BAL | Catcher | 74 | 180 | 22.99 | 333 West Camden Street | Baltimore, MD 21201 |
+-------------------------------------------------------------------------------------------------+
```

### Report 2: Shortstops

Spec: For all shortstops (position=shortstop), show each shortstop's age, the average age of all shortstops, the average age of all infielders (position is one of First Baseman, Second Baseman, Third Baseman or Shortstop), the average age of all shortstops older than the player in question and the average age of all shortstops younger than the player in question. Sort by the player's age in ascending order.

Output Filename: shortstops.txt

E.q. the record for Miguel Tejada would look like this:

```
+-----------------------------------------------------------+
| Miguel Tejada | 22.99 | 28.403 | 28.918 | 29.021 | 22.596 |
+-----------------------------------------------------------+
```


## Assumptions and Other Considerations

Please include an assumptions.md file that includes a list of all assumptions you've made in the event that a requirement is not clear. E.g.:

* Assuming database table names should match file name

Also, feel free to create additional tables in the SQLite database as needed. 


## Submission

You should commit all files to a local git repo, and then submit your changes as  PR to the same repo you cloned.

The following files should be included (along with all the original files in the repo):

```
Import_Baseball_Data.ktr
Output_Reports.ktr
output.db
extended_data.sql
extended_data.txt
shortstops.sql
shortstops.txt
```