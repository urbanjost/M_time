           program demo_unix_to_date
           use M_time, only : unix_to_date, u2d, fmtdate, realtime
           implicit none
           real(kind=realtime)           :: unixtime
           real(kind=realtime),parameter :: DAY=86400.0d0 ! seconds in a day
           integer                       :: dat(8)
           integer                       :: ierr
              unixtime=1468939038.4639933d0            ! sample Unix Epoch time
              call unix_to_date(unixtime,dat,ierr)     ! create DAT array for today
              write(*,*)'Sample Date=',fmtdate(dat)
              call unix_to_date(unixtime-DAY,dat,ierr) ! go back one day
              write(*,*)'Day Before =',fmtdate(dat)    ! subtract day and print
              call unix_to_date(unixtime+DAY,dat,ierr) ! go forward one day
              write(*,*)'Day After  =',fmtdate(dat)    ! add day print
           end program demo_unix_to_date
