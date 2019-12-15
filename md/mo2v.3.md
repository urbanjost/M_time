<?
<body>
  <a name="top" id="top"></a>
  <div id="Container">
    <div id="Content">
      <div class="c36">
        <hr />
        <h1><i>Manual Reference Pages -</i> mo2v (3)</h1>
        <hr />
      </div><a name="0"></a>
      <h3><a name="0">NAME</a></h3>
      <blockquote>
        <b>mo2v(3f)</b> - [M_time] given month name return month number (1-12) of that month <b>(LICENSE:PD)</b>
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
function <b>mo2v</b>(<i>month_name</i>) <b>result</b>(<i>imonth</i>)
<br />     character(len=*),intent(in):: month_name ! month name
     integer                    :: imonth     ! month number
<br />
</pre>
      </blockquote><a name="2"></a>
      <h3><a name="2">DESCRIPTION</a></h3>
      <blockquote>
        Given a string representing the name or abbreviation of a Gregorian Calendar month return a number representing the position of the month in the
        calendar starting with 1 for January and ending with 12 for December.
      </blockquote><a name="3"></a>
      <h3><a name="3">OPTIONS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c37" colspan="2">month_name</td>
          </tr>
          <tr valign="top">
            <td width="6%"></td>
            <td>name or abbreviation of month. Case is ignored Once enough characters are found to uniquely identify a month the rest of the name is
            ignored.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>
      <h3><a name="4">RETURNS</a></h3>
      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c37" width="6%" nowrap="nowrap">imonth</td>
            <td valign="bottom">month number returned. If the name is not recognized a <b>-1</b> is returned.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>
      <h3><a name="5">EXAMPLE</a></h3>
      <blockquote>
        Sample program:
        <pre>
    program demo_mo2v
    use M_time, only : mo2v
    implicit none
       write(*,*)mo2v("April")
       write(*,*)mo2v('Apr')
       ! NOTE: still matches September, as "SE" was enough
       write(*,*)mo2v('sexember')
       write(*,*)mo2v('unknown')  ! returns -1
    end program demo_mo2v
<br />
</pre>results:
        <pre>
      &gt;  4
      &gt;  4
      &gt;  9
      &gt; -1
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
