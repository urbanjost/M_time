# M_time.f90 and associated files

## NAME

   M_time - Fortran module for manipulating and presenting time and date values 

## DESCRIPTION

The M_time(3f) Fortran module provides date and time-related
procedures. Both a procedural and OOP (Object Oriented Programming)
interface are provided. Each routine is accompanied by a man(1) page
which includes a sample program for that procedure. A manual, the source
and example programs are included in the package.

## The M_time(3f) module

  * provides for formatting dates. 
  * facilitates simple computations using time and date values in the recent era. 
  * allow for macro-level timing of code. 

The M_TIME(3f) module complements the DATE_AND_TIME(3f) procedure, which is
the standard intrinsic subroutine that returns the current date and time in
the Gregorian calendar. That is, the primary way this module represents dates
is as an integer array with the same meaning for elements as defined by the
DATE_AND_TIME(3f) routine. In addition it can calculate or read many other
date representations such as ...

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


## DEFINITIONS

A "date_and_time" array **"DAT"** has the same format as the array of values
generated by the Fortran intrinsic DATE_AND_TIME(3f). That is, it is an
8-element integer array containing year, month, day, Time zone difference from
UTC in minutes, hour, minutes, seconds, and milliseconds of the second. This
array represents a date on the Proleptic Gregorian Calendar.

The **Proleptic Gregorian Calendar** assumes the Gregorian Calendar existed
back to the beginning of the Julian Day calendar (4713 BC). This means
historic dates will often be confused, as the Julian Calendar was used in the
USA until 1752-09-03, for example. The Gregorian Calendar was formally decreed
on 1582-10-15 but was not adapted in many countries. The Julian Calendar was
first used around 45 BC. Note that the Proleptic Gregorian Calendar includes a
year zero (0). It is frequently used in computer software to simplify the
handling of older dates. For example, it is the calendar used by MySQL,
SQLite, PHP, CIM, Delphi, Python and COBOL. The Proleptic Gregorian Calendar
is explicitly required for all dates before 1582 by ISO 8601:2004 (clause
4.3.2.1 The Gregorian calendar) if the partners to information exchange agree.

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

Like most collections of date and time procedures M_time is _not_ a high-
precision library that accounts internally for leap seconds and relativistic
effects.

M_time(3f) is intended for use in the recent era and is not appropriate for
use with historical dates that used some other calendar scheme such as the
Julian Calendar. That is, you have to remember to account for conversions to
other calendar systems when using historical dates.

When Daylight Savings is in effect calculations will generally be correct, as
the date model includes a timezone value; but you are responsible for ensuring
dates you create use the correct timezone value or otherwise account for
Daylight Savings Time as needed.

Currently, dates are manipulated using the current system timezone, which can
typically be set using the environment variable TZ. So if you desire to set
the default timezone you generally set the environment variable _before_
executing your program. This is compatible with current observed behavior for
the intrinsic procedure DATE_AND_TIME(3f) with compilers I have tested with,
but does not seem to be a specified behavior as far as the standard is
concerned. That is, DATE_AND_TIME(3f) returns a vector that contains a current
time zone, but does not specify how a current time zone can be explicitly set.
Since this library is intentionally designed to complement DATE_AND_TIME(3f)
it adopts the same behavior. 

There is no warranty on this code, and it is certain to change.

## SEE ALSO

The ISO-8601 standard is often used for business-related transactions.

There are (of course) the C/C++ intrinsics which provide much of the same
functionality that should be bindable to Fortran via the ISO_C_BINDING module.

If you are looking for a high-precision Fortran library that is well tested
for manipulating dates I would suggest looking at the NASA SPICElib library.
If you care about Leap Seconds, Orbital Mechanics, GPS/Satellite
communications, and Astronomy it is worth a look.

This package is a self-contained version of the M_time library from
the GPF (General Purpose Fortran) package that has been extracted for
those just interested in a library of time-related functions. In the
GPF package this library is intertwined with several other large modules.

The Fortran Wiki [ fortranwiki.org ](http://fortranwiki.org) contains
information on other libraries and modules that provide date-time procedures.

