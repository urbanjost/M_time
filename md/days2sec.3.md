### NAME

**days2sec(3f)** \- [M_time] convert string of form [[-]dd-]hh:mm:ss.nn to seconds **(LICENSE:PD)**

### SYNOPSIS

>     function **days2sec**(_str_) **result**(_time_)
>         character(len=*),intent(in)       :: str
>         real(kind=realtime)               :: time

### DESCRIPTION

Given a string representing a duration of the form

> [-][[[dd-]hh:]mm:]ss
or
> NNdNNhNNmNNsNNw 
return a value representing seconds

If "dd-" is present, units for the numbers are assumed to proceed from day
to hour to minute to second. But if no day is present, the units are assumed
to proceed from second to minutes to hour from left to right. That is ...

>             [-]dd-hh:mm:ss
>             [-]dd-hh:mm
>             [-]dd-hh
>             hh:mm:ss
>             mm:ss
>             ss
>  
>              Where dd is days, hh hours, mm minutes and ss seconds.
>              A decimal fraction is supported on the seconds (Actually,
>              any of the numeric values may represent positive floating
>              point numbers). Spaces are ignored.

NNdNNhNNmNNs Simple numeric values may also be used with unit suffixes;
where s,m,h, or d represents seconds, minutes, hours or days and w represents
a week. Allowed aliases for w,d,h,m, and s units are

>                               d -  days,day
>                               m -  minutes,minute,min,mins
>                               h -  hours,hour,hr,hrs
>                               s -  seconds,second,sec,secs
>                               w -  week, weeks, wk, wks

The numeric values may represent floating point numbers.
Spaces, commas and case are ignored.

### OPTIONS

> str

> string of the general form dd-hh:mm:ss.nn

### RETURNS

> time

> the number of seconds represented by the input string

### EXAMPLE

Sample program:

>         program demo_days2sec
>         use M_time, only : days2sec
>         implicit none
>            write(*,*)days2sec('1-12:04:20')
>            write(*,*)'one second ',days2sec('1')
>            write(*,*)'one minute ',days2sec('1:00')
>            write(*,*)'one hour ',days2sec('1:00:00')
>            write(*,*)'one day ',days2sec('1-00:00:00')
>            write(*,*)nint(days2sec(' 1-12:04:20              ')) .eq. 129860
>            write(*,*)nint(days2sec(' 1.5 days                ')) .eq. 129600
>            write(*,*)nint(days2sec(' 1.5 days 4hrs 30minutes ')) .eq. 145800
>            write(*,*)nint(days2sec(' 1.5d                    ')) .eq. 129600
>            write(*,*)nint(days2sec(' 1d2h3m4s                ')) .eq. 93784
>            ! duplicates
>            write(*,*)nint(days2sec(' 1d1d1d                  ')) .eq. 259200
>            ! negative values
>            write(*,*)nint(days2sec(' 4d-12h                  ')) .eq. 302400
>         end program demo_days2sec


Results:

>         129860.00000000000
>         one second    1.0000000000000000
>         one minute    60.000000000000000
>         one hour    3600.0000000000000
>         one day    86400.000000000000
>         T
>         T
>         T
>         T
>         T
>         T
>         T
