## M_time Changelog

The intent of this changelog is to keep everyone in the loop about what's
new in the M_time project. It is a curated, chronologically ordered
list of notable changes including records of change such as bug fixes,
new features, changes, and relevant notifications.

---
**2025-01-25**  John S. Urban  <https://github.com/urbanjost>

Sun 25 Jan 2025 16:30:44 EST
### :green: ADD:
     - added support for Modified Julian Dates (MJD) 
     - added support for Basedate and Seconds (BAS),
       which is MJD using a two-valued type composed of
       an integer baseday a 64-bit offset from the date
       in seconds.
---
**2022-11-17**  John S. Urban  <https://github.com/urbanjost>

Thu 17 Nov 2022 11:49:28 EST
### :red: FIX:
     - corrected DOW() round-off error encountered on i386
       32-bit platform
---
**2015-12-21**  John S. Urban  <https://github.com/urbanjost>

### :green_circle: ADD:
     initial release
---

<!--
   - [x] manpage
   - [x] demo program
   - [ ] unit test
### :orange_circle: DIFF:
       + renamed ADVICE(3f) to ALERT(3f)
### :green_circle: ADD:
       + advice(3f) was added to provide a standardized message format simply.
### :red_circle: FIX:
       + </bo> did not work on several terminal types, changed it to a more
         universally accepted value.
-->

