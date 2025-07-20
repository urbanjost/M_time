program test_a_A_format
use M_time, only : fmtdate, u2d, days2sec
use, intrinsic :: iso_fortran_env, only : stdout=>OUTPUT_UNIT, stderr=>ERROR_UNIT
implicit none
integer,parameter :: wp=kind(0.0d0)
integer :: datnow(8)
integer :: datstart(8)
real(kind=wp) :: a,b
character(len=:),allocatable :: string
! %a -- Time since now as d-hh:mm:ss   %a  100-22:59:01
! %A -- Time since now as seconds      %A  23423008.543
   call date_and_time(values=datnow)
   datstart=u2d(0)

   ! compare Linux Epoch time to age of now from beginning of Epoch,
   ! which should be the same value
   string=fmtdate(datnow,"%e")//' '//fmtdate(datstart,"%A")
   read(string,*)a,b
   if ( nint(b -a ).ne.0) then
      write(*,*)'FAILED: %A test:',b,a,b-a
      stop 1
   endif

   ! get same thing in D-hh:mm:ss format and then convert that
   ! to seconds using days2sec(3f) and should get same result
   string=fmtdate(datstart,"%a")
   if ( nint(days2sec(string)-b) .ne. 0) then 
      write(*,*)'FAILED: a% test:',days2sec(string),b,days2sec(string)-b
      stop 2
   endif

   stop 'PASSED: tested %a and %A'
end program test_a_A_format
