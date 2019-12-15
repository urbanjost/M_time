<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c55">
        <hr />
        <h1><i>Manual Reference Pages -</i> v2mo (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>v2mo(3f)</b> - [M_time] returns the month name of a Common month number <b>(LICENSE:PD)</b>
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
function <b>v2mo</b>(<i>imonth</i>) <b>result</b>(<i>month_name</i>)
<br />    integer,intent(in)           :: imonth      ! month number (1-12)
    character(len=:),allocatable :: month_name  ! month name
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Given a Common Calendar month number, return the name of the month as a string.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c56" width="6%" nowrap="nowrap">imonth</td>
            <td valign="bottom">Common month number (1-12). If out of the allowable range the month name returned will be 'UNKNOWN'.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c56" colspan="2">month_name</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
            <td>A string representing a month name or the word 'UNKNOWN'</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_v2mo
    use M_time, only : v2mo
    implicit none
    integer :: i
       do i=1,13
          write(*,*)v2mo(i)
       enddo
    end program demo_v2mo
<br />
</pre>results:
        <pre>
    January
    February
    March
    April
    May
    June
    July
    August
    September
    October
    November
    December
    UNKNOWN.
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
