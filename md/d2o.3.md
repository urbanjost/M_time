<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c5">
        <hr />
        <h1><i>Manual Reference Pages -</i> d2o (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>d2o(3f)</b> - [M_time] converts DAT date-time array to Ordinal day <b>(LICENSE:PD)</b>
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
function <b>d2o</b>(<i>dat</i>) result (<i>ordinal</i>)
<br />    integer,intent(in),optional :: dat(8)   ! date time array
    integer                     :: ordinal  ! the returned day of the year
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Given a date in the form of a "DAT" array return the Ordinal Day, (ie. "the day of the year").
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c6" width="6%" nowrap="nowrap">dat</td>
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
            <td class="c6" colspan="2">ordinal</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
            <td>The day of the year calculated for the given input date, where Jan 1st=1.</td>
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
    program demo_d2o
    use M_time, only : d2o
    implicit none
    integer :: dat(8)
       call date_and_time(values=dat)
       write(*,'(" Today is:",*(i0:,":"))')dat
       write(*,*)'Day of year is:',d2o(dat)
<br />       ! year, month, day, timezone, hour, minute, seconds, milliseconds
       dat=[2020,12,31,-240,12,0,0,0]
       write(*,*)dat(1),' Days in year is:',d2o(dat)
<br />       dat=[2021,12,31,-240,12,0,0,0]
       write(*,*)dat(1),' Days in year is:',d2o(dat)
<br />       dat=[2022,12,31,-240,12,0,0,0]
       write(*,*)dat(1),' Days in year is:',d2o(dat)
<br />       dat=[2023,12,31,-240,12,0,0,0]
       write(*,*)dat(1),' Days in year is:',d2o(dat)
<br />       dat=[2024,12,31,-240,12,0,0,0]
       write(*,*)dat(1),' Days in year is:',d2o(dat)
<br />    end program demo_d2o
<br />
</pre>results:
        <pre>
    Today is:2016:7:19:-240:20:1:19:829
    Day of year is:         201
           2020  Days in year is:         366
           2021  Days in year is:         365
           2022  Days in year is:         365
           2023  Days in year is:         365
           2024  Days in year is:         366
<br />
</pre>
      </blockquote><a name="6"></a>
      <h3><a name="6">AUTHOR</a></h3>
    </div>
  </div>
</body>
