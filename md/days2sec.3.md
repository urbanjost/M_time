<?
<body?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="generator" content="HTML Tidy for Cygwin (vers 25 March 2009), see www.w3.org" />

  <title></title>
</head>

<body>
  <a name="top" id="top"></a>

  <div id="Container">
    <div id="Content">
      <div class="c15"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>days2sec(3f)</b> - [M_time] convert string of form [[-]dd-]hh:mm:ss.nn to seconds <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="8"></a>

      <h3><a name="8">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>days2sec</b>(<i>str</i>) <b>result</b>(<i>time</i>)
<br />    character(len=*),intent(in)       :: str
    real(kind=realtime)               :: time
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        Given a string representing a duration of the form

        <table cellpadding="3">
          <tr valign="top">
            <td class="c16" colspan="2">[-][[[dd-]hh:]mm:]ss</td>
          </tr>
        </table>or

        <table cellpadding="3">
          <tr valign="top">
            <td>[NNd][NNh][NNm][NNs][NNw]</td>
          </tr>
        </table>return a value representing seconds

        <table cellpadding="3">
          <tr>
            <td>
              If "dd-" is present, units for the numbers are assumed to proceed from day to hour to minute to second. But if no day is present, the units
              are assumed to proceed from second to minutes to hour from left to right. That is ...
              <pre>
        [-]dd-hh:mm:ss
        [-]dd-hh:mm
        [-]dd-hh
        hh:mm:ss
        mm:ss
        ss
        
</pre>Where dd is days, hh hours, mm minutes and ss seconds. A decimal fraction is supported on the seconds (Actually, any of the numeric values may
represent positive floating point numbers). Spaces are ignored.
            </td>
          </tr>
        </table>[NNd][NNh][NNm][NNs][NNw]

        <table width="100%" cellpadding="3">
          <tr>
            <td width="6%"></td>

            <td>
              Simple numeric values may also be used with unit suffixes; where s,m,h, or d represents seconds, minutes, hours or days and w represents a
              week. Allowed aliases for w,d,h,m, and s units are
              <pre>
                 d -  days,day
                 m -  minutes,minute,min,mins
                 h -  hours,hour,hr,hrs
                 s -  seconds,second,sec,secs
                 w -  week, weeks, wk, wks 
</pre>The numeric values may represent floating point numbers.

              <p>Spaces, commas and case are ignored.</p>
            </td>

            <td></td>
          </tr>
        </table>
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c17" width="6%" nowrap="nowrap">str</td>

            <td valign="bottom">string of the general form dd-hh:mm:ss.nn or [NNd][NNh][NNm][NNs][NNw]</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURNS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c17" width="6%" nowrap="nowrap">time</td>

            <td valign="bottom">the number of seconds represented by the input string</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
    program demo_days2sec
    use M_time, only : days2sec
    implicit none
       write(*,*)days2sec('1-12:04:20')
       write(*,*)'one second ',days2sec('1')
       write(*,*)'one minute ',days2sec('1:00')
       write(*,*)'one hour ',days2sec('1:00:00')
       write(*,*)'one day ',days2sec('1-00:00:00')
       write(*,*)nint(days2sec(' 1-12:04:20              ')) .eq. 129860
       write(*,*)nint(days2sec(' 1.5 days                ')) .eq. 129600
       write(*,*)nint(days2sec(' 1.5 days 4hrs 30minutes ')) .eq. 145800
       write(*,*)nint(days2sec(' 1.5d                    ')) .eq. 129600
       write(*,*)nint(days2sec(' 1d2h3m4s                ')) .eq. 93784
       ! duplicates
       write(*,*)nint(days2sec(' 1d1d1d                  ')) .eq. 259200
       ! negative values
       write(*,*)nint(days2sec(' 4d-12h                  ')) .eq. 302400
    end program demo_days2sec
<br />
</pre>Results:
        <pre>
    129860.00000000000
    one second    1.0000000000000000
    one minute    60.000000000000000
    one hour    3600.0000000000000
    one day    86400.000000000000
    T
    T
    T
    T
    T
    T
    T
</pre>
      </blockquote>
    </div>
  </div>
</body>
</html>
