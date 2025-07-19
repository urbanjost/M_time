<!-- M_timestamp -->
[![pocketwatch](docs/images/M_time.3m_time.gif)](https://urbanjost.github.io/M_time/fpm-ford/index.html)
# [M_time](https://urbanjost.github.io/M_time/man3.html)

## Name
   M_time - Fortran module for manipulating and presenting time and date values

## Description

M_time(3f) displays Civilian Calendar dates in many formats.

In addition to high-level date formatting, it can manipulate or read
many other date representations ...

  * Julian and Modified Julian Dates
  * Baseday and Seconds Dates
  * Unix Epoch Dates
  * High-level date formatting
  * Ordinal days of the year
  * days of the week
  * ISO-8601 week numbers
  * month and weekday names
  * (limited) internationalization

__Julian__ and __Unix Epoch Dates__ are particularly useful for
manipulating dates in simple numeric expressions. They are numbers with
units of days and seconds respectively from a fixed date that you can
easily convert to and from. So you can convert any date to a Julian Date,
subtract one and you have the date for the day before, for example.

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

Procedural, Functional, and OOP (Object Oriented Programming) interfaces
are provided.

Each routine is accompanied by a man(1) page which includes a sample
program for that procedure. An HTML manual, the source, and example
programs for each procedure are included in the package.

## Procedures

### Epoch Time (UT starts at 0000 on 1 Jan. 1970)
+ **[date_to_unix](https://urbanjost.github.io/M_time/date_to_unix.3m_time.html) (dat,UNIXTIME,IERR)** ! Convert date array to Unix Time
+ **[unix_to_date](https://urbanjost.github.io/M_time/unix_to_date.3m_time.html)(unixtime,DAT,IERR)** ! Convert Unix Time to date array
+ **[d2u](https://urbanjost.github.io/M_time/d2u.3m_time.html)(dat) result (UNIXTIME)**  ! Convert date array to Unix Time
+ **[u2d](https://urbanjost.github.io/M_time/u2d.3m_time.html)(unixtime) result (DAT)**  ! Convert Unix Time to date array
### Julian
+ **[julian_to_date](https://urbanjost.github.io/M_time/julian_to_date.3m_time.html)(julian,DAT,IERR)** ! Convert Julian Date to date array
+ **[date_to_julian](https://urbanjost.github.io/M_time/date_to_julian.3m_time.html)(dat,JULIAN,IERR)** ! Convert date array to Julian Date
+ **[d2j](https://urbanjost.github.io/M_time/d2j.3m_time.html)(dat) result (JULIAN)**    ! Convert date array to Julian Date
+ **[j2d](https://urbanjost.github.io/M_time/j2d.3m_time.html)(julian) result (DAT)**    ! Convert Julian Date to date array

### Modified Julian
+ **[modified_julian_to_date](https://urbanjost.github.io/M_time/modified_julian_to_date.3m_time.html)(modified_julian,DAT,IERR)** ! Convert Modified Julian Date to date array
+ **[date_to_modified_julian](https://urbanjost.github.io/M_time/date_to_modified_julian.3m_time.html)(dat,MODIFIED_JULIAN,IERR)** ! Convert date array to Modified Julian Date
+ **[d2m](https://urbanjost.github.io/M_time/d2m.3m_time.html)(dat) result (MODIFIED_JULIAN)**    ! Convert date array to Modified Julian Date
+ **[m2d](https://urbanjost.github.io/M_time/m2d.3m_time.html)(modified_julian) result (DAT)**    ! Convert Modified Julian Date to date array

### Baseday and Seconds
+ **[bas_to_date](https://urbanjost.github.io/M_time/bas_to_date.3m_time.html)(bas,DAT,IERR)** ! Convert Baseday and Seconds to date array
+ **[date_to_bas](https://urbanjost.github.io/M_time/date_to_bas.3m_time.html)(dat,bas,IERR)** ! Convert date array to Baseday and Seconds type
+ **[d2b](https://urbanjost.github.io/M_time/d2b.3m_time.html)(dat) result (bas)**    ! Convert date array to Baseday and Seconds
+ **[b2d](https://urbanjost.github.io/M_time/b2d.3m_time.html)(bas) result (DAT)**    ! Convert Baseday and Seconds to date array

### Day of Week
+ **[dow](https://urbanjost.github.io/M_time/dow.3m_time.html)(dat,[WEEKDAY],[DAY],IERR)** ! Convert date array to day of the week as number and name
### Week of Year
+ **[d2w](https://urbanjost.github.io/M_time/d2w.3m_time.html)(dat,ISO_YEAR,ISO_WEEK,ISO_WEEKDAY,ISO_NAME)** ! Calculate iso-8601 Week-numbering year date yyyy-Www-d
+ **[w2d](https://urbanjost.github.io/M_time/w2d.3m_time.html)([iso8601_week]|[iso_year,iso_week,iso_weekday],DAT)**  ! given iso-8601 Week as numeric year, week and day_of_week, or string "yyyy-Www-d" calculate date as a DAT array
### Ordinal Day
+ **[d2o](https://urbanjost.github.io/M_time/d2o.3m_time.html)(dat) result(ORDINAL)** ! given date array return ordinal day of year, Jan 1st=1
+ **[o2d](https://urbanjost.github.io/M_time/o2d.3m_time.html)(ordinal) result(DAT)** ! given ordinal day of year return date array, Jan 1st=1
+ **[ordinal_to_date](https://urbanjost.github.io/M_time/ordinal_to_date.3m_time.html) (year,ordinal_day,DAT)** ! given ordinal day of year return date array, Jan 1st=1
 + **[ordinal_seconds](https://urbanjost.github.io/M_time/ordinal_seconds.3m_time.html)()** ! seconds since the beginning of current year
### Printing Dates
+ **[fmtdate](https://urbanjost.github.io/M_time/fmtdate.3m_time.html)(dat,format) result (TIMESTR)** ! Convert date array to string using format
+ **[fmtdate_usage](https://urbanjost.github.io/M_time/fmtdate_usage.3m_time.html)(indent)** ! display macros recognized by fmtdate
+ **[locale](https://urbanjost.github.io/M_time/locale.3m_time.html)(name,mths,wks,mths,short,wks_short,ierr)** ! allow substituting other strings for month and weekday names, including predefined sets for languages representable in extended ASCII.
+ **[now](https://urbanjost.github.io/M_time/now.3m_time.html)(format) result (NOW)** ! return string representing current time given format
+ **[box_month](https://urbanjost.github.io/M_time/box_month.3m_time.html)(dat,CALEN)** ! print specified month into character array
### Printing Durations
+ **[sec2days](https://urbanjost.github.io/M_time/sec2days.3m_time.html)(seconds) result (DHMS)**  ! converts seconds to string D-HH:MM:SS
+ **[days2sec](https://urbanjost.github.io/M_time/days2sec.3m_time.html)(str) result (SECONDS)** ! converts strings like "D-HH:MM:SS" or "4 days 2 hrs" to seconds
### Month Name
+ **[mo2v](https://urbanjost.github.io/M_time/mo2v.3m_time.html)(month_name) result (MONTH_NUMBER)** ! given month name return month number
+ **[v2mo](https://urbanjost.github.io/M_time/v2mo.3m_time.html)(month_number) result (MONTH_NAME)** ! given month number return month name
+ **[mo2d](https://urbanjost.github.io/M_time/mo2d.3m_time.html)(month_name) result (DAT)**    ! given month name and year return date array for 1st day of month
### Astrological
+ **[easter](https://urbanjost.github.io/M_time/easter.3m_time.html)(year,dat)**    ! calculate month and day Easter falls on for given year
+ **[moon_fullness](https://urbanjost.github.io/M_time/moon_fullness.3m_time.html)(datin) result(FULLNESS)** ! percentage of moon phase from new to full
+ **[phase_of_moon](https://urbanjost.github.io/M_time/phase_of_moon.3m_time.html)(datin) result(PHASE)** ! return name for phase of moon for given date
### Reading Dates
+ **[guessdate](https://urbanjost.github.io/M_time/guessdate.3m_time.html)(anot,dat)** ! Converts a date string to a date array, in various formats
<!--
### C Interface
+ **[system_sleep](https://urbanjost.github.io/M_time/system_sleep.3m_time.html)(wait_seconds)**  ! Call sleep(3c)
-->
### Convenient Constants for use with + and - Operators
```fortran
integer,parameter,public   :: realtime=kind(0.0d0)           ! type for unix epoch time and julian days

real(kind=realtime),public,parameter :: dt_minute=60.0_dp     ! one minute in seconds
real(kind=realtime),public,parameter :: dt_hour=3600.0_dp     ! one hour in seconds
real(kind=realtime),public,parameter :: dt_day=86400.0_dp     ! 24:00:00 hours in seconds
real(kind=realtime),public,parameter :: dt_week=dt_day*7.0_dp ! one week in seconds
```
-->
## Example
A simple program that formats the current time as desired, and displays
the built-in help text for the formatting options is as simple as
```fortran
      program demo_now
      use M_time, only : now
      implicit none
       write(*,*)now("The current date is %w, %l %d, %Y %H:%m:%s %N") ! % macros
       write(*,*)now("year-month-day") ! or, if macros not found then keywords
       write(*,*)now("Y-M-D h:m:s")    ! and if that is not found, abbreviations
       call locale('french')
       write(*,*)now("%W, %L %D, %Y %h:%m:%s ")
       call locale('slovak')
       write(*,*)now("%W, %L %D, %Y %h:%m:%s ")
       call locale('spanish')
       write(*,*)now("%W, %L %D, %Y %h:%m:%s ")
      end program demo_now
```

```text
    The current date is Wed, Feb 5th, 2025 8:57:07 AM
    2025-02-05
    2025-02-05 08:57:07
    mercredi, février 05, 2025 08:57:07
    streda, február 05, 2025 08:57:07
    miércoles, febrero 05, 2025 08:57:07
```

A built-in description of the macro and keyword substitution rules
can be called to easily add the information to program help messages
and documentation.

```fortran
      program builtin_macrohelp
      use M_time, only : fmtdate_usage
      implicit none
      ! built-in usage descriptions can be displayed as well
       call fmtdate_usage() ! see all formatting options
      end program builtin_macrohelp
```
```text
   Description                                        Example

   Base time array:
    1) %Y | year, yyyy                             2025
    2) %M | month of year, 01 to 12                02
    3) %D | day of month, 01 to 31                 19
       %d | day of month with suffix (1st,2nd,...) 19th
       %K | day of month in English (eg. first)    757554556
    4) %Z | minutes from UTC                       -0300m
       %z | -+hh:mm from UTC                       -05:00
       %T | -+hhmm  from UTC                       -0500
    5) %h | hours, 00 to 23                        16
       %H | hour (1 to 12, or twelve-hour clock)   4
       %N | midnight<AM<=noon; noon<=PM<midnight   PM
    6) %m | minutes, 00 to 59                      41
    7) %s | sec, 00 to 59                          53
    8) %x | milliseconds 000 to 999                150
   Conversions:
       %E | Unix Epoch time                        1740001313.1499977
       %e | integer value of Unix Epoch time       1740001313
       %F | Modified Julian date                   60725.904087384231
       %f | integer value of Modified Julian Date  60725
       %G | Baseday and Seconds                    (60725,78113.151003420353)
       %g | Baseday seconds                        78113.151003420353
       %J | Julian  date                           2460726.4040873959
       %j | integer Julian Date(Julian Day)        2460726
       %O | Ordinal day (day of year)              050
       %o | Whole days since Unix Epoch date       20138
       %U | day of week, 1..7 Sunday=1             4
       %u | day of week, 1..7 Monday=1             3
       %i | ISO week of year 1..53                 8
       %I | iso-8601 week with weekday: yyyy-Www-d 2025-W08-3
    Names:
       %l | abbreviated month name                 Feb
       %L | full month name                        February
       %w | first three characters of weekday      Wed
       %W | weekday name                           Wednesday
       %p | phase of moon                          Last quarter
       %P | percent of way from new to full moon   -54%
       %X | day of the month in English            nineteenth
    Literals:
       %% | a literal %                             %
       %t | tab character
       %b | blank character
       %B | exclamation(bang) character            !
       %n | new line (system dependent)

       %q | single quote (apostrophe)              '
       %Q | double quote                           "
    Duration:
       %a | Time since now as d-hh:mm:ss           0-00:00:00
       %A | Time since now as seconds              0.0000000000000000
    Program timing:
       %c | CPU_TIME(3f) output                    0.45703999999999995E-1
       %C | number of times this routine is used   1
       %S | seconds since last use of this format  0.0000000000000000
       %k | time in seconds from SYSTEM_CLOCK(3f)  757554.562
       %K | time in clicks from SYSTEM_CLOCK(3f)   757554565
    Help:
       %? | call fmtdate_usage()

   If no percent (%) is found in the format one of several
   alternate substitutions occurs.

   If the format is composed entirely of one of the following
   keywords the following substitutions occur:
    iso-8601,
    iso          ==> %Y-%M-%DT%h:%m:%s%z ==> 2025-02-19T16:41:53-05:00
    iso-8601W,
    isoweek      ==> %I ==> 2025-W08-3
    sql          ==> %Y-%M-%D %h:%m:%s.%x ==> 2025-02-19 16:41:53.158
    sqlday       ==> %Y-%M-%D ==> 2025-02-19
    sqltime      ==> %h:%m:%s.%x ==> 16:41:53.159
    dash         ==> %Y-%M-%D ==> 2025-02-19
    rfc-2822     ==> %w, %D %l %Y %h:%m:%s %T
                       Wed, 19 Feb 2025 16:41:53 -0500
    rfc-3339     ==> %Y-%M-%DT%h:%m:%s%z ==> 2025-02-19T16:41:53-05:00
    date         ==> %w %l %D %h:%m:%s UTC%z %Y
                       Wed Feb 19 16:41:53 UTC-05:00 2025
    short        ==> %w, %l %d, %Y %H:%m:%s %N UTC%z
                       Wed, Feb 19th, 2025 4:41:53 PM UTC-05:00
    long," "     ==> %W, %L %d, %Y %H:%m:%s %N UTC%z
                       Wednesday, February 19th, 2025 4:41:53 PM UTC-05:00
    suffix       ==> %Y%D%M%h%m%s ==> 20251902164153
    formal       ==> The %d of %L %Y ==> The 19th of February 2025
    lord         ==> the %d day of %L in the year of our Lord %Y
                       the 19th day of February in the year of our Lord 2025
    easter       ==> FOR THE YEAR OF THE CURRENT DATE:
                       Easter day: the %d day of %L in the year of our Lord %Y
    all          ==> A SAMPLE OF DATE FORMATS
    usage|help|? ==> call fmtdate_usage
   otherwise the following words are replaced with the most
   common macros:
      year                        %Y  2025
      month                       %M  02
      day                         %D  19
      timezone                    %z  -05:00
      hour                        %h  16
      minute                      %m  41
      second                      %s  53
      millisecond                 %x  164
      epoch                       %e  1740001313
      julian                      %j  2460726
      ordinal                     %O  050
      weekday                     %u  3
      longmonth|MONTH             %L  February
      shortmonth|Month|Mth        %l  Feb
      shortday|DAY                %d  19th
      longday                     %X  nineteenth
      goodhour|HOUR               %H  4
      GOOD                        %N  PM
      shortweekday|Weekday|wkday  %w  Wed
      longweekday|WEEKDAY         %W  Wednesday
      Timezone                    %Z  -0300m
      TIMEZONE                    %z  -05:00
      age                         %a  0-00:00:00
      AGE                         %A  0.0000000000000000
```
   If none of these keywords are found then every letter that
   is a macro is assumed to have an implied percent in front
   of it. For example:
```text
      YMDhms ==> %Y%M%D%h%m%s ==> 20250219164153
```
---
![docs](docs/images/docs.gif)
---
## Documentation

### User
<!--
+ [intro page](https://urbanjost.github.io/M_time/M_time.3m_time.html)
+ [OOP intro page](https://urbanjost.github.io/M_time/M_time_oop.3m_time.html)
-->
+ [man-page index](https://urbanjost.github.io/M_time/man3.html)
+ [BOOK_M_time](https://urbanjost.github.io/M_time/BOOK_M_time.html) is a consolidated
  single-page version of the man-pages for ease in printing and searching(`requires javascript`)

+ Furthermore there are actual man-pages that can be installed on ULS (Unix-Like Systems):
    - ![man-pages](docs/images/manpages.gif) [manpages.tgz](https://urbanjost.github.io/M_time/manpages.tgz)
    - ![man-pages](docs/images/manpages.gif) [manpages.zip](https://urbanjost.github.io/M_time/manpages.zip)
### Developer Documentation

- [doxygen output](https://urbanjost.github.io/M_time/doxygen_out/html/index.html).
- [ford output](https://urbanjost.github.io/M_time/fpm-ford/index.html).
- [CHANGELOG](docs/CHANGELOG.md)
---
## Download tarball or zip file

- [archive](https://github.com/urbanjost/M_time/releases) files containing released
  versions in tar(1) and zip(1) format.
---
![GNU](docs/images/gnu.gif)
---
## Download and Build using gmake

To build the modules download the github repository, enter the src/
directory and run make(1):
```text
     git clone https://github.com/urbanjost/M_time.git
     cd M_time/src

     make clean
     # change Makefile if not using one of the listed compilers
     # COMPILER_NAME={ifort, nvfortran, or gfortran}
     make $COMPILER_NAME
```
This will compile the M_time module and optionally build all the example programs from
the document pages (in the example/ sub-directory).
```text
     # optionally
     make run  # run all the demo programs from the man-pages
     make help # see other developer options
```
---
![fpm](docs/images/fpm_logo.gif)
---
## Download and Build using fpm

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
---
![cmake](docs/images/cmake_logo-1.png)
---
## Download and Build using cmake

To download the github repository and build and install with cmake
(you may wish to change the install path in src/CMakeLists.txt first) :
```bash
      git clone https://github.com/urbanjost/M_time.git
      cd M_time

      # Create a Build Directory:
      mkdir -p build

      cd build
      cmake -S ../src -B .

      # Configure the Build, specifying your preferred compiler (ifort, flang, etc.):
      cmake . -DCMAKE_Fortran_COMPILER=gfortran

      # Build the Project:
      cmake --build .

      #This creates:
      #
      #    build/lib/libM_time.a (the static library).
      #    build/include/*.mod (module files).
      #    build/test/* (test executables).
      #    build/example/* (example executables).

      # OPTIONAL SECTION:

      # Verify build
      ls build/lib/libM_time.a
      ls build/include/*.mod
      ls build/test/*
      ls build/example/*

      #Optionally Run Tests and Examples:
      for name in ./test/* ./example/*
      do
         $name
      done

      #Install (Optional):
      # This installs the library and module files to the system
      # (e.g., /usr/local/lib/ and /usr/local/include/).
      cmake --install .

      # if you have insufficient permissions sudo(1) may be required
      # to perform the install
      #sudo cmake --install .

      # Verify installation
      ls /usr/local/lib/libM_time.a
      ls /usr/local/include/*.mod

      # Cleaning Up: To clean artifacts, remove the build/ directory:
      rm -rf build
```
---
![demos](docs/images/demo.gif)
---
## Demo Programs

Each man-page contains a small sample program that has been extracted
and placed in the [example/](example/) directory.  The small example programs
demonstrate how easily you can generate a variety of output formats:
```text
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
```
In particular, the example program "now" easily lets you try out various
options. With no options it displays allowed formats. For example:
```text
      ./now year month day
      ./now 'julian epoch ordinal'
      ./now 'The year is %Y and the month is %M (%L) %h:%m:%s'
      ./now formal

       20200105
       2458854 1578240100 005
       The year is 2020 and the month is 01 (January) 11:01:39
       The 5th of January 2020
```
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

A **JD** is defined as a **Julian Date**. JD days start at
noon (not at midnight). 4713-01-01 BC at noon is defined as JD 0.0.

If you are not familiar with them, in this context Julian Dates and Unix
Epoch Times are scalar numbers that allow for easy computations using
dates (to go back one day just subtract one from a Julian Date, for
example). Since these values are generally not considered intelligible,
routines are included to convert between these scalar values and the
date array so human-readable results can be obtained.

**Modified Julian Date (MJD)** measures days (and fractional days) since
the start of 17 Nov 1858 CE in Universal Time (UTC). Julian Date (JD)
measures days (and fractional days) since noon on 1 January, 4713 BCE
in Universal Time (UTC).

    Modified Julian Date (MJD) = Julian Date (JD) - 2400000.5

**Baseday and Seconds (BAS)** dates are an alternate form of the MJD
(Modified Julian Date) where the date is stored as a structure named
"_BAStime_", containing the number of days since the beginning of the MJD
Epoch and a double representing the seconds offset from the start of
this day.
```fortran
   type BAStime
      integer :: base_day       ! number of days since the MJD Epoch date
      real(kind=real64) :: secs ! seconds from start of base_day
   end type BAStime
```
This allows for storing a date at a higher precision that the other
formats used by the library, although sometimes that lower precision
is limited primarily by the definition (ie. the milliseconds in a DAT
could be smaller units).

BAS (and MJD) starts at midnight (00:00:00) so truncating the
fractional component of BAS always gives the same Civil Calendar day
whatever the time of day (unlike JD).

The seconds offset may take any double-precision value, so that any
date/time may be expressed in terms of an offset from the same MJD
day. The seconds field thus may exceed a single day, and may also be
negative. Note that in floating-point math larger numbers will have
a wider spacing between representable values, possibly decreasing
the precision of results.

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

### Status
+ [CD/CI STATUS](docs/STATUS.md)

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
<!--
   TODO:

http://plplot.sourceforge.net/docbook-manual/plplot-html-5.15.0/enhancement-libraries.html

-->
