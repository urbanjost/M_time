### NAME

**ordinal_seconds(3f)** \- [M_time] seconds since beginning of year **(LICENSE:PD)**

### SYNOPSIS

>     function **ordinal_seconds**()
>         integer :: ordinal_seconds

### DESCRIPTION

Return number of seconds since beginning of current year.

Before using this routine consider the consequences if the application is
running at the moment a new year begins.

### EXAMPLE

sample program

>        program demo_ordinal_seconds
>        use M_time, only : ordinal_seconds
>        implicit none
>        character(len=1) :: paws
>        integer          :: ios
>        integer          :: istart, iend
>        istart=ordinal_seconds()
>        write(*,'(a)',advance='no')'now pause. Enter return to continue ...'
>        read(*,'(a)',iostat=ios) paws
>        iend=ordinal_seconds()
>        write(*,*)'that took ',iend-istart,'seconds'
>        write(*,*)istart,iend
>        end program demo_ordinal_seconds
