<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c53">
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>unix_to_date(3f)</b> - [M_time] converts Unix Epoch Time to DAT date-time array <b>(LICENSE:PD)</b>
      </blockquote>
      <a name="contents" id="contents"></a>
      <a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
        <pre>
subroutine <b>unix_to_date</b>(unixtime,dat,ierr)
<br />    real(kind=realtime),intent(in) :: unixtime ! Unix time (seconds)
    integer,intent(out)            :: dat(8)   ! date and time array
    integer,intent(out)            :: ierr     ! 0 for successful execution
<br />
</pre>
      <a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      
        Converts a Unix Epoch Time (UET) to a DAT date-time array.
      <a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      
        <table cellpadding="3">
          <tr valign="top">
            <td class="c54" colspan="1" width="%6">unixtime
	    </td>
            <td>The "Unix Epoch" time, or the number of seconds
                since 00:00:00 on January 1st, 1970, UTC; of type
                <b>real</b>(kind=realtime).
	    </td>
          </tr>
        </table>

      <a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      
        <table cellpadding="3">

          <tr valign="top">
            <td class="c54" width="6%" nowrap="nowrap">dat
	    </td>
            <td valign="bottom">Integer array holding a "DAT" array,
                similar in structure to the array returned by the intrinsic
                <b>DATE_AND_TIME</b>(3f):
                <pre> dat=[year,month,day,timezone,hour,minutes,seconds,milliseconds] </pre>
	    </td>
          </tr>
        </table>
     
      <table cellpadding="3">
        <tr valign="top">
          <td class="c54" width="6%" nowrap="nowrap">ierr</td>
          <td valign="bottom">Error code. If 0 no error occurred.</td>
        </tr>
      </table>

      <a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
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
<br />
</pre>results:
        <pre>
    Sample Date=Tuesday, July 19th, 2016 10:37:18 AM
    Day Before =Monday, July 18th, 2016 10:37:18 AM
    Day After  =Wednesday, July 20th, 2016 10:37:18 AM
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
