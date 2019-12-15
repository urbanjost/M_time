<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>box_month(3f)</b> - [M_time] create specified month in a character array <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>
      <a name="8"></a>
      <h3><a name="8">SYNOPSIS</a></h3>
      <blockquote>
        <pre>
subroutine <b>box_month</b>(dat,calen)
<br />    integer,intent(in)    :: dat(8)
    character(len=21)     :: calen(8)
<br />
</pre>
      <a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      
        <b>box_month</b>(3f) uses a year and month from a date array to populate a small character array with a calendar representing the month.
      <a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">"DAT" array (an integer array of the same format as the array returned by the intrinsic <b>DATE_AND_TIME</b>(3f)) describing
            the date to be used to specify what calendar month to produce.
        <pre>
          dat=[year,month,day,timezone,hour,minutes,seconds,milliseconds]
</pre>
	    </td>
          </tr>
        </table>
      <a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">calen</td>
            <td valign="bottom">returned character array holding a display of the specified month</td>
          </tr>
        </table>
                   <a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_box_month
    use M_time, only : box_month
    implicit none
    integer           :: dat(8)
    character(len=21) :: calendar(8)
       call date_and_time(values=dat)
       call box_month(dat,calendar)
       write(*,'(a)')calendar
    end program demo_box_month
<br />
</pre>results:
        <pre>
     &gt;     July 2016
     &gt;Mo Tu We Th Fr Sa Su
     &gt;             1  2  3
     &gt; 4  5  6  7  8  9 10
     &gt;11 12 13 14 15 16 17
     &gt;18 19 20 21 22 23 24
     &gt;25 26 27 28 29 30 31
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
