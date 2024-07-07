program demo_fmtdate
use M_time, only : fmtdate, u2d, days2sec
implicit none
integer,parameter :: wp=kind(0.0d0)
integer :: dat(8)
real(kind=wp) :: a,b
character(len=:),allocatable :: string
   call date_and_time(values=dat)
   string=fmtdate(dat,"%e")//' '//fmtdate(u2d(0),"%A")
   read(string,*)a,b
   if ( nint(b -a ).ne.0) then
      write(*,*)'%a test:',b,a,b-a
      stop 1
   endif
   string=fmtdate(u2d(0),"%a")
   if ( nint(days2sec(string)-b) .ne. 0) then 
      write(*,*)'%a test:',days2sec(string),b,days2sec(string)-b
      stop 2
   endif
   stop 'tested %a and %A'
end program demo_fmtdate
