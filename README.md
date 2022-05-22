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
manipulating dates in simple numeric expressions.

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

-->
