      program demo_b2d
      use M_time, only : b2d, d2b, fmtdate, realtime, BAStime
      !BAStime includes operator(+), operator(-)
      implicit none
      integer,parameter :: dp=kind(0.0d0)
      type(BAStime)     :: today
      type(BAStime)     :: aday
      type(BAStime)     :: newday
      integer           :: dat(8)
      character(len=*),parameter :: g='(*(g0,1x))'

         write(*,g)'b2d:'
         call date_and_time(values=dat) ! get the date using intrinsic
         today=d2b(dat)                 ! convert DAT to BAS
         write(*,g)'Today=',fmtdate(b2d(today))
         ! math is easy with Julian Days and Julian Dates

         write(*,g)'Yesterday=',fmtdate(b2d(today+BAStime(-1,0.0_dp)))
         write(*,g)'Tomorrow= ',fmtdate(b2d(today+BAStime(+1,0.0_dp)))

         write(*,g)'Yesterday=',fmtdate(b2d(today+BAStime(0,-86400.0_dp)))
         write(*,g)'Tomorrow= ',fmtdate(b2d(today+BAStime(0,+86400.0_dp)))

         aday=BAStime(1,0.0_dp)
         write(*,g)'Yesterday=',fmtdate(b2d(today-aday))
         write(*,g)'Tomorrow= ',fmtdate(b2d(today+aday))

         newday=today-aday
         write(*,g)'Yesterday=',fmtdate(b2d(newday))
         newday=today+aday
         write(*,g)'Yesterday=',fmtdate(b2d(newday))
      end program demo_b2d
