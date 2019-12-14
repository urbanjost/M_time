### NAME

**v2mo(3f)** \- [M_time] returns the month name of a Common month number **(LICENSE:PD)**

### SYNOPSIS

>     function **v2mo**(_imonth_) **result**(_month_name_)
>         integer,intent(in)           :: imonth      ! month number (1-12)
>         character(len=:),allocatable :: month_name  ! month name

### DESCRIPTION

Given a Common Calendar month number, return the name of the month as a
string.

### OPTIONS

> imonth

> Common month number (1-12). If out of the allowable range the month name
returned will be 'UNKNOWN'.

### RETURNS

> month_name

> A string representing a month name or the word 'UNKNOWN'

### EXAMPLE

Sample program:

>         program demo_v2mo
>         use M_time, only : v2mo
>         implicit none
>         integer :: i
>            do i=1,13
>               write(*,*)v2mo(i)
>            enddo
>         end program demo_v2mo

results:

>         January
>         February
>         March
>         April
>         May
>         June
>         July
>         August
>         September
>         October
>         November
>         December
>         UNKNOWN.
