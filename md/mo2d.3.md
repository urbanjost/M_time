### NAME

**mo2d(3f)** \- [M_time] given month name return DAT date-time array for beginning of that month in specified year **(LICENSE:PD)**

### SYNOPSIS

>     function **mo2d**(_month_name_) result (_dat_)
>      character(len=*),intent(in) :: month_name
>      integer                     :: dat(8)

### DESCRIPTION

Given a Common Calendar month name, return the date as a "DAT" array for the
1st day of the month. An optional year may be specified. The year defaults to
the current year.

### OPTIONS

> month_name

> A string representing a Common Calendar month name.

> year

> Optional year. Defaults to current year

### RETURNS

> dat

An integer array that has the same structure as the array returned by the
Fortran intrinsic **DATE_AND_TIME**(3f).

### EXAMPLE

Sample program:

>         program demo_mo2d
>         use M_time, only : mo2d
>         implicit none
>            write(*,'(*(i0:,":"))')mo2d('March')
>         end program demo_mo2d

results:

>           2016:3:1:-240:0:0:0:0
