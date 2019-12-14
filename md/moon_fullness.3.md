### NAME

**moon_fullness(3f)** \- [M_time] return percentage of moon phase from new to full **(LICENSE:PD)**

### SYNOPSIS

>     function **moon_fullness**(_datin_)
>        integer,intent(in)            :: datin(8)
>        integer                       :: moon_fullness

### DESCRIPTION

This procedure is used to support the %P field descriptor for the
**fmtdate**(3f) routine.

The moon circles the earth every 29.530588853 days on average, so pick a
starting point and count. A new moon occurred at January 6, 2000, 18:14 UTC.
Then it is easy to count the number of days since the last new moon. This is
an approximate calculation.

### OPTIONS

> dat

> DAT Date array describing input date

### RESULTS

> moon_fullness

>

> 0 is a new or dark moon, 100 is a full moon, + for waxing and - for waning.

### EXAMPLES

> Sample:

>  
>  
>        program demo_moon_fullness

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

>           write(*,*)now('The phase of the moon is %p, with a fullness of
%P')

>           write(*,'(1x,*(a))',advance='no')'The phase of the moon is ',trim(
phase_of_moon(dat)),','

>           write(*,'(1x,a,i0,a)')'with a fullness of ',
moon_fullness(dat),'%'

>        end program demo_moon_fullness

>  
>  
>  
>

> Sample output:

>  
>  
>         Today is:2018:11:3:-240:20:18:44:245

>         The phase of the moon is Waning crescent, with a fullness of -30%

>         The phase of the moon is Waning crescent, with a fullness of -30%

>  

