<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c13">
        <hr />
        <h1><i>Manual Reference Pages -</i> date_to_unix (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>date_to_unix(3f)</b> - [M_time] converts DAT date-time array to Unix Epoch Time <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <h3>CONTENTS</h3>
      <blockquote>
        <a href="#1">Synopsis</a><br />
        <a href="#2">Description</a><br />
        <a href="#3">Options</a><br />
        <a href="#4">Returns</a><br />
        <a href="#5">Example</a><br />
        <a href="#6">Author</a><br />
        <a href="#7">License</a><br />
      </blockquote><a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>date_to_unix</b>(dat,unixtime,ierr)
<br />    integer,intent(in)               :: dat(8)
    real(kind=realtime),intent(out)  :: unixtime
    integer,intent(out)              :: ierr
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p>Converts a DAT date-time array to a UET (Unix Epoch Time).</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c14" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">Integer array holding a "DAT" array, similar in structure to the array returned by the intrinsic
            <b>DATE_AND_TIME</b>(3f).</td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table><!-- .nf -->
        <pre>
          dat=[year,month,day,timezone,hour,minutes,seconds,milliseconds]
</pre>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c14" colspan="2">unixtime</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
            <td>The "Unix Epoch" time, or the number of seconds since 00:00:00 on January 1st, 1970, UTC.</td>
          </tr>
          <tr valign="top">
            <td class="c14" width="6%" nowrap="nowrap">ierr</td>
            <td valign="bottom">Error code. If 0 no error occurred.</td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_date_to_unix
    use M_time, only : date_to_unix, realtime
    implicit none
    integer             :: dat(8)
    real(kind=realtime) :: unixtime
    integer             :: ierr
       call date_and_time(values=dat)
       write(*,'(" Today is:",*(i0:,":"))')dat
       call date_to_unix(dat,unixtime,ierr)
       write(*,*)'Unix Epoch time is ',unixtime
       write(*,*)'ierr is ',ierr
    end program demo_date_to_unix
<br />
</pre>results:
        <pre>
    Today is:2016:7:18:-240:23:44:20:434
    Unix Epoch time is    1468899860.4340105
    ierr is            0
</pre>
      </blockquote><a name="6"></a>
      <h3><a name="6">AUTHOR</a></h3>
    </div>
  </div>
</body>
