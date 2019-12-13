           program demo_u2d
           use M_time, only : u2d, d2u, fmtdate, realtime
           implicit none
           real(kind=realtime) :: today
           integer :: dat(8)
              call date_and_time(values=dat) ! get the date using intrinsic
              today=d2u(dat)                 ! convert today to Julian Date
              write(*,*)'Today=',fmtdate(u2d(today))
              write(*,*)'Yesterday=',fmtdate(u2d(today-86400.0d0)) ! subtract day
              write(*,*)'Tomorrow=',fmtdate(u2d(today+86400.0d0))  ! add day
           end program demo_u2d
