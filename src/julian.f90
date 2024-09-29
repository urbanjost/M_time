program julian_time
use M_time, only : date_to_julian
implicit none
integer,parameter           ::  dp=kind(0.0d0)
integer                     ::  dat(8)            
integer                     ::  ierr              
real(kind=dp)               ::  time              
call date_and_time(values=dat)
call date_to_julian(dat,time,ierr)
write(*, '(f0.7)' ) time
end program julian_time
