program testit
use M_time, only : now, locale
   call locale('show')
   write(*,*)now()
   call locale('LANGUAGE')
   call locale('show')
   write(*,*)now()
   call locale('french')
   call locale('show')
   write(*,*)now()
   call locale('LANGUAGE')
   call locale('show')
   write(*,*)now()
end program testit
