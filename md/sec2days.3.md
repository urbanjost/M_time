### NAME

**sec2days(3f)** \- [M_time] convert seconds to string of form dd-hh:mm:ss **(LICENSE:PD)**

### SYNOPSIS

>     function **sec2days**(seconds,crop) **result**(_dhms_)
>         real(kind=realtime),intent(in) :: seconds
>           or
>         integer,intent(in)             :: seconds
>           or
>         real,intent(in)                :: seconds
>           or
>         character(len=*)               :: seconds
>         logical,intent(in),optional    :: crop
>         character(len=:),allocatable   :: dhms

### DESCRIPTION

Given a number of seconds convert it to a string of the form

>           dd-hh:mm:ss

> where dd is days, hh hours, mm minutes and ss seconds.

### OPTIONS

> seconds

>

number of seconds to convert to string of form dd-hh:mm:ss. May be of type
INTEGER, REAL, **REAL**(KIND=REALTIME), or CHARACTER.

CHARACTER strings may be of the form NNdNNhNNmNNs. Case,spaces and
underscores are ignored. Allowed aliases for d,h,m, and s units are

>                       d -  days,day
>                       m -  minutes,minute,min
>                       h -  hours,hour,hrs,hr
>                       s -  seconds,second,sec

> The numeric values may represent floating point numbers.

> crop

> if .true., remove leading zero day values or day and hour values. Optional,
defaults to .false. .

### RETURNS

> dmhs

> the returned string of form [d:h:]m:s

### EXAMPLE

Sample Program:

>         program demo_sec2days
>         use M_time, only : sec2days
>         implicit none
>            write(*,*)sec2days(129860)
>            write(*,*)sec2days(80000.0d0)
>            write(*,*)sec2days(80000.0,crop=.true.)
>            write(*,*)sec2days('1 day 2.0hr 100 min 300.0seconds')
>         end program demo_sec2days

results:

>         1-12:04:20
>         0-22:13:20
>         22:13:20
>         1-03:45:00
