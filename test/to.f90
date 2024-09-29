program testit
use, intrinsic :: iso_fortran_env, only : stderr=>ERROR_UNIT
use M_time, only : now, locale

   call to_upper_extended_ascii()

   call locale('chars')

   call locale('show')

   call locale('fr_FR')

   call locale('show')

   call locale('reset')
   ! recursive I/O is currently non-standard
   write(stderr,*)now('help')

   write(*,*)now('%L %l %d %N %w %W')

contains

subroutine to_upper_extended_ascii()

character(len=*),parameter :: month_names(*) = [ character(len=9) :: &
& 'JANUARY','FEBRUARY','MARCH','APRIL','MAY','JUNE',&
& 'JULY','AUGUST','SEPTEMBER','OCTOBER','NOVEMBER','DECEMBER' ]

character(len=*),parameter :: weekday_names(*) = [ character(len=10) :: &
& 'MONDAY','TUESDAY','WEDNESDAY','THURSDAY','FRIDAY', &
& 'SATURDAY','SUNDAY' ]

character(len=*),parameter :: month_names_abbr(*)= month_names(:)(1:3)
character(len=*),parameter :: weekday_names_abbr(*)= weekday_names(:)(1:3)

call locale('user',month_names,weekday_names,month_names_abbr,weekday_names_abbr)

end subroutine to_upper_extended_ascii

end program testit
