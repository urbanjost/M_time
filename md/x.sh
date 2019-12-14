for NAME in M_time.3.html box_month.3.html d2j.3.html d2o.3.html d2u.3.html d2w.3.html date_to_julian.3.html date_to_unix.3.html days2sec.3.html dow.3.html easter.3.html fmtdate.3.html fmtdate_usage.3.html guessdate.3.html j2d.3.html julian_to_date.3.html mo2d.3.html mo2v.3.html moon_fullness.3.html now.3.html o2d.3.html ordinal_seconds.3.html ordinal_to_date.3.html phase_of_moon.3.html sec2days.3.html u2d.3.html unix_to_date.3.html v2mo.3.html w2d.3.html
do
 html2md $NAME >$(basename $NAME .html).md
done
