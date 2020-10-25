           program demo_v2mo
           use M_time, only : v2mo
           implicit none
           integer :: i
              do i=1,13
                 write(*,*)v2mo(i)
              enddo
           end program demo_v2mo
