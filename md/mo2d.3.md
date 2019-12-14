<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c33">
        <hr />
        <h1><i>Manual Reference Pages -</i> mo2d (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>mo2d(3f)</b> - [M_time] given month name return DAT date-time array for beginning of that month in specified year <b>(LICENSE:PD)</b>
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
function <b>mo2d</b>(<i>month_name</i>) result (<i>dat</i>)
<br />       character(len=*),intent(in) :: month_name
       integer                     :: dat(8)
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Given a Common Calendar month name, return the date as a "DAT" array for the 1st day of the month. An optional year may be specified. The year
        defaults to the current year.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c34" colspan="2">month_name</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
            <td>A string representing a Common Calendar month name.</td>
          </tr>
          <tr valign="top">
            <td class="c35" width="6%" nowrap="nowrap">year</td>
            <td valign="bottom">Optional year. Defaults to current year</td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c34" width="6%" nowrap="nowrap">dat</td>
            <td valign="bottom">An integer array that has the same structure as the array returned by the Fortran intrinsic <b>DATE_AND_TIME</b>(3f).</td>
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
    program demo_mo2d
    use M_time, only : mo2d
    implicit none
       write(*,'(*(i0:,":"))')mo2d('March')
    end program demo_mo2d
<br />
</pre>results:
        <pre>
      2016:3:1:-240:0:0:0:0
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
