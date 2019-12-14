<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c27">
        <hr />
        <h1><i>Manual Reference Pages -</i> guessdate (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>guessdate(3f)</b> - [M_time] reads in a date, in various formats <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <h3>CONTENTS</h3>
      <blockquote>
        <a href="#1">Synopsis</a><br />
        <a href="#2">Description</a><br />
        <a href="#3">Options</a><br />
        <a href="#4">Example</a><br />
      </blockquote><a name="6"></a>
      <h3><a name="6">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>guessdate</b>(anot,dat)
<br />    character(len=*),intent(in) :: anot
    integer,intent(out)         :: dat(8)
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        <p>Read in strings and except for looking for month names remove non-numeric characters and try to convert a string assumed to represent a date to a
        date-time array.</p>
        <p>Years should always be expressed as four-digit numbers, and except for the special format yyyy-mm-dd the day should come after the year. Named
        months are preferred. If ambiguous the order is assumed to be day - month - year. Times are assumed to be of the form HH:MM:SS</p>
        <p>It is planned that this routine will be superseded. As an alternative, a C routine exists in the standard C libraries that allows for expansive
        features when reading dates that can be called via the ISO_C_BINDING interface.</p>
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c28" width="6%" nowrap="nowrap">anot</td>
            <td valign="bottom">A string assumed to represent a date including a year, month and day.</td>
          </tr>
          <tr valign="top">
            <td class="c28" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">Integer array holding a "DAT" array, similar in structure to the array returned by the intrinsic
            <b>DATE_AND_TIME</b>(3f).</td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table><!-- .nf -->
        <pre>
          dat=[year,month,day,timezone,hour,minutes,seconds,milliseconds]
<br />
</pre>
      </blockquote><a name="4"></a>
      <h3><a name="4">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_guessdate
    use M_time, only : guessdate, fmtdate
    implicit none
    character(len=20),allocatable :: datestrings(:)
    character(len=:),allocatable  :: answer
    integer                       :: dat(8)
    integer                       :: i
       datestrings=[ &amp;
       &amp; 'January 9th, 2001   ',&amp;
       &amp; ' Tue Jul 19 2016    ',&amp;
       &amp; ' 21/12/2016         ',&amp;
       &amp; ' 4th of Jul 2004    ' ]
       do i=1,size(datestrings)
          write(*,'(a)')repeat('-',80)
          write(*,*)'TRYING ',datestrings(i)
          call guessdate(datestrings(i),dat)
          write(*,*)'DAT ARRAY ',dat
          answer=fmtdate(dat)
          write(*,*)'FOR '//datestrings(i)//' GOT '//trim(answer)
       enddo
    end program demo_guessdate
<br />
</pre>results:
        <pre>
    ---------------------------------------------------------------------
    TRYING January 9th, 2001
    DAT ARRAY         2001  1  9   -240    0   0   0    0
    FOR January 9th, 2001    GOT Tuesday, January 9th, 2001 12:00:00 AM
    ---------------------------------------------------------------------
    TRYING  Tue Jul 19 2016
    DAT ARRAY         2016  7  19  -240    0   0   0    0
    FOR  Tue Jul 19 2016     GOT Tuesday, July 19th, 2016 12:00:00 AM
    ---------------------------------------------------------------------
    TRYING  21/12/2016
    DAT ARRAY         2016  12 21  -240    0   0   0    0
    FOR  21/12/2016          GOT Wednesday, December 21st, 2016 12:00:00 AM
    ---------------------------------------------------------------------
    TRYING  4th of Jul 2004
    DAT ARRAY         2004  7  4   -240    0   0   0    0
    FOR  4th of Jul 2004     GOT Sunday, July 4th, 2004 12:00:00 AM
<br />
</pre>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
