<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c11">
        <hr />
        <h1><i>Manual Reference Pages -</i> date_to_julian (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>date_to_julian(3f)</b> - [M_time] converts DAT date-time array to Julian Date <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <h3>CONTENTS</h3>
      <blockquote>
        <a href="#1">Synopsis</a><br />
        <a href="#2">Description</a><br />
        <a href="#3">Options</a><br />
        <a href="#4">Returns</a><br />
        <a href="#5">Example</a><br />
      </blockquote><a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>date_to_julian</b>(dat,juliandate,ierr)
<br />    integer,intent(in)               :: dat(8)
    real(kind=realtime),intent(out)  :: juliandate
    integer,intent(out)              :: ierr
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Converts a DAT date-time array to a Unix Epoch Time (UET) value. UET is the number of seconds since 00:00 on January 1st, 1970, UTC.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c12" width="6%" nowrap="nowrap">dat</td>
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
            <td class="c12" colspan="2">juliandate</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
            <td>A Julian Ephemeris Date (JED) is the number of days since noon (not midnight) on January 1st, 4713 BC.</td>
          </tr>
          <tr valign="top">
            <td class="c12" width="6%" nowrap="nowrap">ierr</td>
            <td valign="bottom">Error code. If 0 no error occurred.</td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample Program:
        <pre>
    program demo_date_to_julian
    use M_time, only : date_to_julian,realtime
    implicit none
    integer             :: dat(8)
    real(kind=realtime) :: juliandate
    integer             :: ierr
       ! generate DAT array
       call date_and_time(values=dat)
       ! show DAT array
       write(*,'(" Today is:",*(i0:,":"))')dat
       ! convert DAT to Julian Date
       call date_to_julian(dat,juliandate,ierr)
       write(*,*)'Julian Date is ',juliandate
       write(*,*)'ierr is ',ierr
    end program demo_date_to_julian
<br />
</pre>results:
        <pre>
    Today is:2016:7:19:-240:11:3:13:821
    Julian Date is    2457589.1272432986
    ierr is            0
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
