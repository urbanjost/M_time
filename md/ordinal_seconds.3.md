<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c45">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>ordinal_seconds(3f)</b> - [M_time] seconds since beginning of year <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <a name="6"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
function <b>ordinal_seconds</b>()
<br />    integer :: ordinal_seconds
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Return number of seconds since beginning of current year.
        <p>Before using this routine consider the consequences if the application is running at the moment a new year begins.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">EXAMPLE</a></h3>
      <blockquote>
        sample program
        <pre>
   program demo_ordinal_seconds
   use M_time, only : ordinal_seconds
   implicit none
   character(len=1) :: paws
   integer          :: ios
   integer          :: istart, iend
   istart=ordinal_seconds()
   write(*,'(a)',advance='no')'now pause. Enter return to continue ...'
   read(*,'(a)',iostat=ios) paws
   iend=ordinal_seconds()
   write(*,*)'that took ',iend-istart,'seconds'
   write(*,*)istart,iend
   end program demo_ordinal_seconds
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
