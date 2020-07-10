program demo_ordinal_seconds
use M_time, only : ordinal_seconds
implicit none
!character(len=1) :: paws
integer          :: ios, i
integer          :: istart, iend
real             :: sum
   istart=ordinal_seconds()
   !write(*,'(a)',advance='no')'now pause. Enter return to continue ...'
   !read(*,'(a)',iostat=ios) paws
   sum=0.0d0
   do i=1,10000000
      sum=sqrt(real(i))+sum
   enddo
   iend=ordinal_seconds()
   write(*,*)'that took ',iend-istart,'seconds'
   write(*,*)istart,iend
end program demo_ordinal_seconds
