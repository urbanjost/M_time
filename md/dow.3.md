### NAME

**dow(3f)** \- [M_time] given a date-time array DAT return the day of the week **(LICENSE:PD)**

### SYNOPSIS

>     subroutine **dow**(_values_, _weekday_, _day_, _ierr_)
>         integer,intent(in) :: values(8)
>         integer,intent(out),optional :: weekday
>         character(len=*),intent(out),optional :: day
>         integer,intent(out),optional :: ierr

### DESCRIPTION

> Given a date array DAT return the _day_ of the week as a number and a name,
Mon=1.

### OPTIONS

> values

> "DAT" array (an integer array of the same format as the array returned by
the intrinsic **DATE_AND_TIME**(3f)) describing the date to be used to
calculate the _day_ of the week.

### RETURNS

> weekday

>

> The numeric _day_ of the week, starting with Monday=1. Optional.

>

> day

> The name of the _day_ of the week. Optional.

>

> ierr

> Error code

>

> o

> [ 0] correct

>

> o

> [-1] invalid input date

>

> o

> [-2] neither _day_ nor _weekday_ return _values_ were requested.

>

> If the error code is not returned and an error occurs, the program is
stopped.

### EXAMPLE

> Sample program:

>  
>  
>         program demo_dow

>         use M_time, only : dow

>         implicit none

>         integer          :: dat(8)     ! input date array

>         integer          :: weekday

>         character(len=9) :: day

>         integer          :: ierr

>  
>           call date_and_time(values=dat)

>           call dow(dat, weekday, day, ierr)

>           write(*,'(a,i0)')'weekday=',weekday

>           write(*,'(a,a)')'day=',trim(day)

>           write(*,'(a,i0)')'ierr=',ierr

>  
>  
>  
>

>> end program demo_dow

>

> results:

>  
>  
>         weekday=1

>         day=Monday

>         ierr=0

>  

