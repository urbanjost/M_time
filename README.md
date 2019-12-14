# M_time.f90 and associated files

This package is a self-contained version of the M_time library from
the GPF (General Purpose Fortran) package that has been extracted for
those just interested in a library of time-related functions. In the
GPF package this library is intertwined with several other large modules.

    git clone https://github.com/urbanjost/M_time.git
    cd M_time/src
    # change Makefile if not using gfortran(1) 
    make

This will compile the M_time module and build all the example programs from
the man(1) pages in the PROGRAMS/ sub-directory.

## NAME

   M_time - Fortran module for manipulating and presenting time and date values 

## DESCRIPTION

### The M_time Fortran module

  * provides for formatting dates in many styles
  * facilitates simple computations using time and date values in the recent era. 
  * allow for macro-level timing of code. 

Both a procedural and OOP (Object Oriented Programming) interface are
provided. Each routine is accompanied by a man(1) page which includes
a sample program for that procedure. An HTML manual, the source and
example programs are included in the package.


The M_TIME(3f) module complements the DATE_AND_TIME(3f) procedure, which
is the standard Fortran intrinsic subroutine that returns the current
date and time in the Gregorian calendar. That is, the primary way this
module represents dates is as an integer array with the same meaning
for elements as defined by the DATE_AND_TIME(3f) routine. In addition
it can calculate or read many other date representations such as ...

  * Julian Dates 
  * Unix Epoch Dates 
  * High-level date formatting 
  * Ordinal days of the year 
  * days of the week 
  * ISO-8601 week numbers 
  * month and weekday names 

Julian and Unix Epoch Dates are particularly useful for manipulating dates in
simple numeric expressions.

The extensive formatting options include showing SYSTEM_CLOCK(3f) and
CPU_USAGE(3f) information along with Gregorian date information, allowing for
the easy incorporation of timing information into program messages. In
addition to conventional Civilian Calendar dates, the module supports the
ISO-8601 standard methods of displaying dates.


  |                             UNIX EPOCH                                  |
  |------------------------------------------ | -------- | -----------------|
  |Procedure                                  | OOPS     | Description      |
  |------------------------------------------ | -------- | -----------------|
  |                                           |          | Convert date     |
  |date_to_unix(dat,UNIXTIME,IERR)            |%epoch()  | array to Unix    |
  |                                           |          | Time             |
  |------------------------------------------ | -------- | -----------------|
  |unix_to_date(unixtime,DAT,IERR)            |          | Convert Unix Time|
  |                                           |          | to date array    |
  |------------------------------------------ | -------- | -----------------|
  |                                           |          | Convert date     |
  |d2u(dat) result (UNIXTIME)                 |          | array to Unix    |
  |                                           |          | Time             |
  |------------------------------------------ | -------- | -----------------|
  |u2d(unixtime) result (DAT)                 |          | Convert Unix Time|
  |                                           |          | to date array    | 

<table BORDER="1">

<tr><th colspan="3">UNIX EPOCH                </th></tr>
<tr><td><a href="date_to_unix.3.html"> date_to_unix(dat,UNIXTIME,IERR)    </a></td><td>%epoch()  </td><td> Convert date array to Unix Time</td></tr>
<tr><td><a href="unix_to_date.3.html"> unix_to_date(unixtime,DAT,IERR)    </a></td><td>&nbsp;   </td><td> Convert Unix Time to date array</td></tr>
<tr><td><a href="d2u.3.html"> d2u(dat) result (UNIXTIME)  </a></td><td>&nbsp;     </td><td> Convert date array to Unix Time</td></tr>
<tr><td><a href="u2d.3.html"> u2d(unixtime) result (DAT)  </a></td><td>&nbsp;     </td><td> Convert Unix Time to date array</td></tr>

<tr><th colspan="3">JULIAN                    </th></tr>
<tr><td><a href="julian_to_date.3.html"> julian_to_date(julian,DAT,IERR)      </a></td><td>&nbsp;   </td><td> Convert Julian Date to date array</td></tr>
<tr><td><a href="date_to_julian.3.html"> date_to_julian(dat,JULIAN,IERR)      </a></td><td>%julian() </td><td> Converts date array to Julian Date </td></tr>
<tr><td><a href="d2j.3.html"> d2j(dat) result (JULIAN)    </a></td><td>&nbsp;    </td><td> Convert date array to Julian Date</td></tr>
<tr><td><a href="j2d.3.html"> j2d(julian) result (DAT)    </a></td><td>&nbsp;    </td><td> Convert Julian Date to date array</td></tr>

<tr><th colspan="3">DAY OF WEEK               </th></tr>
<tr><td><a href="dow.3.html"> dow(dat,[WEEKDAY],[DAY],IERR)  </a></td><td>%weekday() </td><td> Convert date array to day of the week as number(Mon=1) and name</td></tr>

<tr><th colspan="3">WEEK OF YEAR              </th></tr>
<tr><td><a href="d2w.3.html"> d2w(dat,ISO_YEAR,ISO_WEEK,ISO_WEEKDAY,ISO_NAME) </a></td><td>&nbsp;  </td><td> calculate iso-8601 Week-numbering year date yyyy-Www-d</td></tr>
<tr><td><a href="w2d.3.html"> w2d(iso_year,iso_week,iso_weekday,DAT) </a></td><td>&nbsp;  </td><td> calculate date given iso-8601 Week date yyyy-Www-d</td></tr>

<tr><th colspan="3">ORDINAL DAY               </th></tr>
<tr><td><a href="d2o.3.html"> d2o(dat) result(ORDINAL)                  </a></td><td>%ordinal() </td><td> given date array return ordinal day of year, Jan 1st=1</td></tr>
<tr><td><a href="o2d.3.html"> o2d(ordinal,[year]) result(DAT)                </a></td><td> </td><td> given ordinal day of year return date array, Jan 1st=1</td></tr>
<tr><td><a href="ordinal_to_date.3.html"> ordinal_to_date(ordinal,year,DAT)  </a></td><td> </td><td> given ordinal day of year return date array, Jan 1st=1</td></tr>
<tr><td><a href="ordinal_seconds.3.html"> ordinal_seconds()  </a></td><td> </td><td> return seconds since beginning of year</td></tr>

<tr><th colspan="3">PRINTING DATES            </th></tr>
<tr><td><a href="fmtdate.3.html"> fmtdate(dat,format)  result (TIMESTR) </a></d><td>%format([STRING]) </td><td> Convert date array to string using format</td></tr>
<tr><td><a href="fmtdate_usage.3.html"> fmtdate_usage(indent)           </a></td><td>&nbsp;            </td><td> display macros recognized by fmtdate(3f)</td></tr>
<tr><td><a href="now.3.html"> now(format)        result (NOW)           </a></td><td>&nbsp;            </td><td> return string representing current time given format</td></tr>
<tr><td><a href="box_month.3.html"> box_month(dat,CALEN)                </a></td><td>&nbsp;            </td><td> print specified month into character array</td></tr>

<tr><th colspan="3">MONTH NAME                    </th></tr>
<tr><td><a href="mo2v.3.html"> mo2v(month_name)   result (MONTH_NUMBER) </a></td><td>&nbsp;      </td><td> given month name return month number</td></tr>
<tr><td><a href="v2mo.3.html"> v2mo(month_number) result (MONTH_NAME)   </a></td><td>&nbsp;      </td><td> given month number return month name</td></tr>
<tr><td><a href="mo2d.3.html"> mo2d(month_name)   result (DAT)          </a></td><td>&nbsp;      </td><td> return date array for
first day of given month name in specified year</td></tr>

<tr><th colspan="3">ASTROLOGICAL                        </th></tr>
<tr><td><a href="easter.3.html"> easter(year,dat) </a></td><td>&nbsp; </td><td> calculate month and day Easter falls on for given year </td></tr>
<!--
<tr><td><a href="ephemeris.3.html"> ephemeris(dat,planet,DEC_D,DEC,M,DEC_C,ASCENT_H,ASCENT_M) </a></td><td>&nbsp; </td><td> ephemeris position of planets for adjusting an equatorial telescope </td></tr>
-->

<tr><td><a href="moon_fullness.3.html"> moon_fullness(DAT) result(FULLNESS)</a></td><td>&nbsp; </td><td> percentage of moon phase from new to full </td></tr>
<tr><td><a href="phase_of_moon.3.html"> phase_of_moon(DAT) result(PHASE)</a></td><td>&nbsp; </td><td> return name for phase of moon for given date </td></tr>

<tr><th colspan="3">DURATION                  </th></tr>
<tr><td><a href="sec2days.3.html">  sec2days(seconds)  result(dhms)     </a></td><td>&nbsp;       </td><td> converts seconds to string D-HH:MM:SS</td></tr>
<tr><td><a href="days2sec.3.html"> days2sec(string)   result(seconds)   </a></td><td>&nbsp;       </td><td> converts string D-HH:MM:SS to seconds</td></tr>

<tr><th colspan="3">READING DATES             </th></tr>
<tr><td><a href="guessdate.3.html">    guessdate(anot,dat)                </a></td><td>&nbsp;       </td><td> Converts a date string to a date array, in various formats</td></tr>

</table>

## DEFINITIONS

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

## LIMITATIONS

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

There is no warranty on this code, and it is certain to change.

## SEE ALSO

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

