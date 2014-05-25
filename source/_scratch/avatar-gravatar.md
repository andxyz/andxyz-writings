
```bash
read -d '' somephp <<"EOF"
$gravatar = "http://www.gravatar.com/avatar/" . md5( "andrew@pilotinteractive.ca" ) . "?s=512";
echo "<a href='$gravatar'>$gravatar</a>";
echo "<br>";
$gravatar = "http://www.gravatar.com/avatar/" . md5( "andxyz.stevens@gmail.com" ) . "?s=512";
echo "<a href='$gravatar'>$gravatar</a>";
echo "<br>";
EOF

boris.phar somephp
```
