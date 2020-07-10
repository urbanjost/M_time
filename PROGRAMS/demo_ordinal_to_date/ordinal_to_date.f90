program demo_ordinal_to_date
use M_time, only : ordinal_to_date
implicit none
integer            :: yyyy, ddd, mm, dd
integer            :: dat(8)
!integer            :: ios

   !INFINITE: do
      write(*,'(a)',advance='no')'Enter year YYYY and ordinal day of year DD (or q to quit)'
      !read(*,*,iostat=ios)yyyy,ddd
      yyyy=2001
      ddd=100
      !if(ios.ne.0)exit INFINITE
      ! recover month and day from year and day number.
      call ordinal_to_date(yyyy, ddd, dat)
      mm=dat(2)
      dd=dat(3)
      write(*,'(*(g0))')'For Year ',yyyy,' and Ordinal day ',ddd, &
        & new_line('a'), &
        &         ' Month is ',mm,' and Day of Month is ',dd
   !enddo INFINITE

end program demo_ordinal_to_date
