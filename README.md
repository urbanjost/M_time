### M_time.f90 and associated files
#### [CHANGELOG](docs/CHANGELOG.md)
![pocketwatch](docs/images/M_time.3m_time.gif)

## Name
   M_time - Fortran module for manipulating and presenting time and date values

## Description

M_time(3f) can be used to display Civilian Calendar dates in many formats.

In addition, it can manipulate or read many other date representations
such as ...

  * Julian Dates
  * Unix Epoch Dates
  * High-level date formatting
  * Ordinal days of the year
  * days of the week
  * ISO-8601 week numbers
  * month and weekday names

__Julian__ and __Unix Epoch Dates__ are particularly useful for
manipulating dates in simple numeric expressions. They are numbers with
units of days and seconds respectively from a fixed date that you can
easily convert to and from. So you can convert any date to a Julian Date,
subtract one and you have the date for yesterday, for example.

The `M_time Fortran` module complements the `DATE_AND_TIME(3f)` procedure
( it is the standard Fortran intrinsic subroutine that returns the
current date and time in the Gregorian calendar). That is, the primary
way this module represents dates is as an integer array with the same
meaning for elements as defined by the `DATE_AND_TIME(3f)` routine.

The extensive formatting options include showing `SYSTEM_CLOCK(3f)`
and `CPU_USAGE(3f)` information along with Gregorian date information,
allowing for the easy incorporation of timing information into program
messages.

In addition to conventional Civilian Calendar dates, the module supports
the ISO-8601 standard.

Both a procedural and OOP (Object Oriented Programming) interface are
provided.

Each routine is accompanied by a man(1) page which includes a sample
program for that procedure. An HTML manual, the source, and example
programs are included in the package.

A simple program that formats the current time as desired, and 
displays the built-in help text for the formatting options is as
simple as
```fortran
program demo_now
use M_time, only : now, fmtdate_usage
implicit none
   ! % macros
   write(*,*)now("The current date is %w, %l %d, %Y %H:%m:%s %N")
   ! or, if not found then keywords
   write(*,*)now("year-month-day")
   ! and if that is not found, abbreviations
   write(*,*)now("Y-M-D h:m:s")
   ! built-in usage descriptions can be displayed as well
   call fmtdate_usage() ! see all formatting options
end program demo_now
```
```text
 The current date is Thu, Oct 20th, 2022 7:26:04 PM
 2022-10-20
 2022-10-20 19:26:04
   Description                                        Example
   
   Base time array:
    (1) %Y -- year, yyyy                                2022
    (2) %M -- month of year, 01 to 12                   10
    (3) %D -- day of month, 01 to 31                    20
        %d -- day of month, with suffix (1st, 2nd,...)  20th
    (4) %Z -- minutes from UTC                          -0240
        %z -- -+hh:mm from UTC                          -04:00
        %T -- -+hhmm  from UTC                          -0400
    (5) %h -- hours, 00 to 23                           19
        %H -- hour (1 to 12, or twelve-hour clock)      7
        %N -- midnight< AM <=noon; noon<= PM <midnight  PM
    (6) %m -- minutes, 00 to 59                         26
    (7) %s -- sec, 00 to 59                             04
    (8) %x -- milliseconds 000 to 999                   781
   Conversions:
        %E -- Unix Epoch time                           1666308364.780985
        %e -- integer value of Unix Epoch time          1666308365
        %J -- Julian  date                              2459873.476444224
        %j -- integer value of Julian Date(Julian Day)  2459873
        %O -- Ordinal day (day of year)                 293
        %o -- Whole days since Unix Epoch date          19285
        %U -- day of week, 1..7 Sunday=1                5
        %u -- day of week, 1..7 Monday=1                4
        %i -- ISO week of year 1..53                    42
        %I -- iso-8601 week-numbering date(yyyy-Www-d)  2022-W42-4
    Names:
        %l -- abbreviated month name                    Oct
        %L -- full month name                           October
        %w -- first three characters of weekday         Thu
        %W -- weekday name                              Thursday
        %p -- phase of moon                             Waning crescent
        %P -- percent of way from new to full moon      -30%
    Literals:
        %% -- a literal %                               %
        %t -- tab character                             	
        %b -- blank character
        %B -- exclamation(bang) character               !
        %n -- new line (system dependent)               

        %q -- single quote (apostrophe)                 '
        %Q -- double quote                              "
    Program timing:
        %c -- CPU_TIME(3f) output                       .2884000000000000E-01
        %C -- number of times this routine is used      1
        %S -- seconds since last use of this format     .000000000000000
        %k -- time in seconds from SYSTEM_CLOCK(3f)     78632.79
        %K -- time in clicks from SYSTEM_CLOCK(3f)      786327846
   
   If no percent (%) is found in the format one of several
   alternate substitutions occurs.
   
   If the format is composed entirely of one of the following
   keywords the following substitutions occur:
     "iso-8601",
     "iso"        ==> %Y-%M-%DT%h:%m:%s%z             2022-10-20T19:26:04-04:00
     "iso-8601W",
     "isoweek"    ==> %I                              2022-W42-4
     "sql"        ==> "%Y-%M-%D %h:%m:%s.%x"          "2022-10-20 19:26:04.785"
     "sqlday"     ==> "%Y-%M-%D"                      "2022-10-20"
     "sqltime"    ==> "%h:%m:%s.%x"                   "19:26:04.785"
     "rfc-2822"   ==> %w, %D %l %Y %h:%m:%s %T
                      Thu, 20 Oct 2022 19:26:04 -0400
     "rfc-3339"   ==> %Y-%M-%DT%h:%m:%s%z             2022-10-20T19:26:04-04:00
     "date"       ==> %w %l %D %h:%m:%s UTC%z %Y
                      Thu Oct 20 19:26:04 UTC-04:00 2022
     "short"      ==> %w, %l %d, %Y %H:%m:%s %N UTC%z
                      Thu, Oct 20th, 2022 7:26:04 PM UTC-04:00
     "long"," "   ==> %W, %L %d, %Y %H:%m:%s %N UTC%z
                      Thursday, October 20th, 2022 7:26:04 PM UTC-04:00
     "suffix"     ==> %Y%D%M%h%m%s                    20222010192604
     "formal"     ==> The %d of %L %Y                 The 20th of October 2022
     "lord"       ==> the %d day of %L in the year of our Lord %Y
                      the 20th day of October in the year of our Lord 2022
     "easter"     ==> FOR THE YEAR OF THE CURRENT DATE:
                        Easter day: the %d day of %L in the year of our Lord %Y
     "all"        ==> A SAMPLE OF DATE FORMATS
   otherwise the following words are replaced with the most
   common macros:
      year          %Y  2022
      month         %M  10
      day           %D  20
      timezone      %z  -04:00
      hour          %h  19
      minute        %m  26
      second        %s  04
      millisecond   %x  787
      epoch         %e  1666308365
      julian        %j  2459873
      ordinal       %O  293
      weekday       %u  4
      MONTH         %L  July
      Month         %l  Jul
      DAY           %d  7th
      HOUR          %H  10
      GOOD          %N  AM
      Weekday       %w  Thu
      WEEKDAY       %W  Thursday
      Timezone      %Z  -240
      TIMEZONE      %z  -04:00
   if none of these keywords are found then every letter that
   is a macro is assumed to have an implied percent in front
   of it. For example:
      YMDhms ==> %Y%M%D%h%m%s ==> 20221020192604
```

## Documentation   ![docs](docs/images/docs.gif)

### User
+ [intro page](https://urbanjost.github.io/M_time/M_time.3m_time.html)
+ [OOP intro page](https://urbanjost.github.io/M_time/M_time_oop.3m_time.html)
+ [man-page index](https://urbanjost.github.io/M_time/man3.html)
+ [BOOK_M_time](https://urbanjost.github.io/M_time/BOOK_M_time.html) is a consolidated
  single-page version of the man-pages for ease in printing and searching(`requires javascript`)

![man-pages](docs/images/manpages.gif)

Furthermore there are actual man-pages that can be installed on ULS (Unix-Like Systems):

[manpage.tgz](https://urbanjost.github.io/M_time/manpage.tgz)
and
[manpage.zip](https://urbanjost.github.io/M_time/manpage.zip)
### Developer Documentation (experimental)

#### doxygen

- [doxygen output](https://urbanjost.github.io/M_time/doxygen_out/html/index.html).

#### ford

- [ford output](https://urbanjost.github.io/M_time/fpm-ford/index.html).

## Download and Build using gmake![GNU](docs/images/gnu.gif)

To build the modules download the github repository, enter the src/
directory and run make(1):

     git clone https://github.com/urbanjost/M_time.git
     cd M_time/src
     
     make clean
     # change Makefile if not using one of the listed compilers
     # COMPILER_NAME={ifort, nvfortran, or gfortran}
     make $COMPILER_NAME

     # optionally
     make help # see other developer options
     make run  # run all the demo programs from the man-pages

This will compile the M_time module and optionally build all the example programs from
the document pages (in the example/ sub-directory) and run the unit tests.

## Download and Build using fpm![fpm](docs/images/fpm_logo.gif)

To download the github repository and build and test it with fpm :
```bash
     git clone https://github.com/urbanjost/M_time.git
     cd M_time
     # on MSWindows:
     fpm test -flag "-D _WIN32"
     # on other platforms
     fpm test
```
or just list it as a dependency in your fpm.toml project file.

```toml
     [dependencies]
     M_time        = { git = "https://github.com/urbanjost/M_time.git" }
```

## Demo Programs![demos](docs/images/demo.gif)

Each man-page contains a small sample program that has been extracted
and placed in the example/ directory.  The small example programs
demonstrate how easily you can generate a variety of output formats:

    Sun, Jan 5th, 2020 10:48:33 AM UTC-05:00

    Sunday, January 5th, 2020 10:48:53 AM UTC-05:00

        January 2020
    Mo Tu We Th Fr Sa Su
           1  2  3  4  5
     6  7  8  9 10 11 12
    13 14 15 16 17 18 19
    20 21 22 23 24 25 26
    27 28 29 30 31

    Julian Date is 2458854.1545532290

    Unix Epoch time is 1578238955.5700049

    ISO-8601 Week: 2020-W01-7

    Day of year is: 5

    for year 2020 days in year is: 366

    weekday=7 day=Sunday

    Easter day: the 12th day of April in the year of our Lord 2020

In particular, the example program "now" easily lets you try out various
options. With no options it displays allowed formats. For example:

      ./now year month day
      ./now 'julian epoch ordinal'
      ./now 'The year is %Y and the month is %M (%L) %h:%m:%s'
      ./now formal

       20200105
       2458854 1578240100 005
       The year is 2020 and the month is 01 (January) 11:01:39
       The 5th of January 2020

## Definitions

A "date_and_time" array **"DAT"** has the same format as the array of
values generated by the Fortran intrinsic DATE_AND_TIME(3f). That is,
it is an 8-element integer array containing year, month, day, Time zone
difference from UTC in minutes, hour, minutes, seconds, and milliseconds
of the second. This array represents a date on the Proleptic Gregorian
Calendar.

The **Proleptic Gregorian Calendar** assumes the Gregorian Calendar
existed back to the beginning of the Julian Day calendar (4713 BC). This
means historic dates will often be confused, as the Julian Calendar was
used in the USA until 1752-09-03, for example. The Gregorian Calendar was
formally decreed on 1582-10-15 but was not adapted in many countries. The
Julian Calendar was first used around 45 BC. Note that the Proleptic
Gregorian Calendar includes a year zero (0). It is frequently used in
computer software to simplify the handling of older dates. For example,
it is the calendar used by MySQL, SQLite, PHP, CIM, Delphi, Python and
COBOL. The Proleptic Gregorian Calendar is explicitly required for all
dates before 1582 by ISO 8601:2004 (clause 4.3.2.1 The Gregorian calendar)
if the partners to information exchange agree.

**Unix Epoch Time (UET)** is defined as the number of seconds since
00:00:00 on January 1st. 1970, UTC.

A **JED** is defined as a **Julian Ephemeris Date**. JED days start at
noon (not at midnight). 4713-01-01 BC at noon is defined as JED 0.0.

If you are not familiar with them, in this context Julian Dates and Unix
Epoch Times are scalar numbers that allow for easy computations using
dates (to go back one day just subtract one from a Julian Date, for
example). Since these values are generally not considered intelligible,
routines are included to convert between these scalar values and the
date array so human-readable results can be obtained.

**Coordinated Universal Time** (French: Temps universel coordonn'e),
abbreviated as **UTC**, is the primary time standard by which the world
regulates clocks and time. It is within about 1 second of mean solar
time at 0o longitude;[1] it does not observe daylight saving time. It
is one of several closely related successors to Greenwich Mean Time
(GMT). For most purposes, UTC is considered interchangeable with GMT,
but GMT is no longer precisely defined by the scientific community.

## Limitations

Like most collections of date and time procedures M_time is _not_ a
high- precision library that accounts internally for leap seconds and
relativistic effects.

M_time(3f) is intended for use in the recent era and is not appropriate
for use with historical dates that used some other calendar scheme such
as the Julian Calendar. That is, you have to remember to account for
conversions to other calendar systems when using historical dates.

When Daylight Savings is in effect calculations will generally be correct,
as the date model includes a timezone value; but you are responsible for
ensuring dates you create use the correct timezone value or otherwise
account for Daylight Savings Time as needed.

Currently, dates are manipulated using the current system timezone, which
can typically be set using the environment variable TZ. So if you desire
to set the default timezone you generally set the environment variable
_before_ executing your program. This is compatible with current observed
behavior for the intrinsic procedure DATE_AND_TIME(3f) with compilers I
have tested with, but does not seem to be a specified behavior as far as
the standard is concerned. That is, DATE_AND_TIME(3f) returns a vector
that contains a current time zone, but does not specify how a current
time zone can be explicitly set.  Since this library is intentionally
designed to complement DATE_AND_TIME(3f) it adopts the same behavior.


## See Also

The ISO-8601 standard is often used for business-related transactions.

There are (of course) the C/C++ intrinsics which provide much of the same
functionality that should be bindable to Fortran via the ISO_C_BINDING
module.

If you are looking for a high-precision Fortran library that is well
tested for manipulating dates I would suggest looking at the NASA
SPICElib library.  If you care about Leap Seconds, Orbital Mechanics,
GPS/Satellite communications, and Astronomy it is worth a look.

The Fortran Wiki [ fortranwiki.org ](http://fortranwiki.org) contains
information on other libraries and modules that provide date-time
procedures.
## References
   + [Gregorian Calendar(Wikipedia)](https://en.wikipedia.org/wiki/Gregorian_calendar)
   + [Fortran Package Manager](https://github.com/fortran-lang/fpm) 
   + [fpm(1) registry](https://github.com/fortran-lang/fpm-registry)
   + [github actions](https://docs.github.com/en/actions)
<!--
   TODO:

http://plplot.sourceforge.net/docbook-manual/plplot-html-5.15.0/enhancement-libraries.html

-->
