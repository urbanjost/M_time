    program demo_ordinal_to_date
    use M_time, only : ordinal_to_date
    implicit none
    integer :: yyyy, ddd, mm, dd, yy
    integer :: dat(8)
    integer :: i, iostat
    character(len=:),allocatable :: fakefile(:)
      fakefile=[character(len=80) :: ' 2024 273 ','2024 001']
      do i=1,size(fakefile)
         write(*,'(a)',advance='no')&
         & 'Enter year YYYY and ordinal day of year DD '
         read(fakefile(i),*,iostat=iostat)yyyy,ddd
         if(iostat/=0)exit
         ! recover month and day from year and day number.
         call ordinal_to_date(yyyy, ddd, dat)
         yy=dat(1)
         mm=dat(2)
         dd=dat(3)
	 write(*,*)
         write(*,'(*(g0))')'For Year ',yyyy,' and Ordinal day ',ddd,  &
         &         ' Month is ',mm,' and Day of Month is ',dd, &
         &         ' and Year is ',yy
      enddo
    end program demo_ordinal_to_date
