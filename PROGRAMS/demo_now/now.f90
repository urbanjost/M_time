program demo_now
use M_time, only : now
implicit none
integer                      :: istat
integer                      :: icount, i, argument_length
character(len=:),allocatable :: argument
   icount = command_argument_count() ! get number of arguments
   if(icount.eq.0)then
      write(*,*)now("The current date is %w, %l %d, %Y %H:%m:%s %N")
      call showme()
   else
      do i=1,icount
         call get_command_argument(number=i,length=argument_length)
         allocate(character(len=argument_length) :: argument)
         call get_command_argument(i, argument,status=istat)
         write(*,'(a)',advance='no')now(argument)
         deallocate(argument)
      enddo
      write(*,'(a)')
   endif
contains
   subroutine showme() ! see all formatting options
      use M_time, only : fmtdate_usage
      call fmtdate_usage() ! see all formatting options
   end subroutine showme
end program demo_now
