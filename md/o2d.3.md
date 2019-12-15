<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c42">
        <hr />
        <h1><i>Manual Reference Pages -</i> o2d (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>o2d(3f)</b> - [M_time] converts Ordinal day to DAT date-time array <b>(LICENSE:PD)</b>
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
function <b>o2d</b>(ordinal,[year]) result (<i>dat</i>)
<br />    integer,intent(in) :: ordinal  ! the day of the year
    integer,optional   :: year     ! year
    integer            :: dat(8)   ! date time array
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Given an Ordinal day of the year return a date in the form of a "DAT" array.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c43" colspan="2">ordinal</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
            <td>The day of the year for the given year, where Jan 1st=1.</td>
          </tr>
          <tr valign="top">
            <td class="c43" width="6%" nowrap="nowrap">year</td>
            <td valign="bottom">An optional year for the ordinal day. If not present the current year is assumed.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c44" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">Integer array holding a "DAT" array, similar in structure to the array returned by the intrinsic <b>DATE_AND_TIME</b>(3f).
            The timezone value is from the current time on the current platform.</td>
          </tr>
        </table><!-- .nf -->
        <pre>
           dat=[year,month,day,timezone,hour,minutes,seconds,milliseconds]
<br />
</pre>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_o2d
    use M_time, only : o2d,fmtdate
    implicit none
    integer :: year
       do year=2004,2008
          write(*,*)'100th day of ',year,' is ',fmtdate(o2d(100,year))
       enddo
       write(*,*)'100th day of this year is ',fmtdate(o2d(100))
    end program demo_o2d
<br />
</pre>results:
        <pre>
    100th day of 2004 is Friday, April 9th, 2004 00:00:00 PM UTC-02:40
    100th day of 2005 is Sunday, April 10th, 2005 00:00:00 PM UTC-02:40
    100th day of 2006 is Monday, April 10th, 2006 00:00:00 PM UTC-02:40
    100th day of 2007 is Tuesday, April 10th, 2007 00:00:00 PM UTC-02:40
    100th day of 2008 is Wednesday, April 9th, 2008 00:00:00 PM UTC-02:40
    100th day of this year is Saturday, April 9th, 2016 00:00:00 PM UTC-02:40
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
