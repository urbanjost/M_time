### NAME

**phase_of_moon(3f)** \- [M_time] return name for phase of moon for given date **(LICENSE:PD)**

### SYNOPSIS

>     function **phase_of_moon**(_datin_)
>        integer,intent(in)            :: datin(8)
>        character(len=:),allocatable  :: phase_of_moon

### DESCRIPTION

#### Phases Of The Moon

This procedure is used to support the %p field descriptor for the
**fmtdate**(3f) routine.

The moon circles the earth every 29.530588853 days on average, so pick a
starting point and count. A new moon occurred at Julian date 2451550.1
(January 6, 2000, 18:14 UTC). Then it is easy to count the number of days
since the last new moon. This is an approximate calculation.

There are eight generally recognized phases of the moon in common use

   *  new or dark
   *  waxing crescent
   *  first quarter
   *  waxing gibbous
   *  full
   *  waning gibbous
   *  laster quarter
   *  waning crescent

To calculate the phase of the moon simply divide the days since the last new
moon by eight and select the appropriate phase.


Note that technically the four states (new, first quarter, full, third
quarter) are events not phases. That is to say, the moon is technically only
new for an instant.

### EXAMPLES

Sample:

>        program demo_phase_of_moon
>        use M_time, only : now
>        use M_time, only : phase_of_moon
>        use M_time, only : moon_fullness
>        implicit none
>        integer             :: dat(8)
>           ! generate DAT array
>           call date_and_time(values=dat)
>           ! show DAT array
>           write(*,'(" Today is:",*(i0:,":"))')dat
>           ! the %p and %P fields are supported by fmtdate(3f)
>           write(*,*)now('The phase of the moon is %p, with a fullness of %P')
>           write(*,'(1x,*(a))',advance='no')'The phase of the moon is ',trim( phase_of_moon(dat)),','
>           write(*,'(1x,a,i0,a)')'with a fullness of ', moon_fullness(dat),'%'
>        end program demo_phase_of_moon

Sample output:

>         Today is:2018:11:3:-240:20:18:44:245
>         The phase of the moon is Waning crescent, with a fullness of -30%
>         The phase of the moon is Waning crescent, with a fullness of -30%
