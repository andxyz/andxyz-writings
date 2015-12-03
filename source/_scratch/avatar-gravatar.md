
```bash
read -d '' somecode <<"EOF"
echo "<html>";

$gravatar = "http://www.gravatar.com/avatar/" . md5( "andrew.stevens@thescore.com" ) . "?s=512";
echo "<a href='$gravatar'>$gravatar</a>";
echo "<img src='$gravatar'>";
echo "<br>";

$gravatar = "http://www.gravatar.com/avatar/" . md5( "andxyz.stevens@gmail.com" ) . "?s=512";
echo "<a href='$gravatar'>$gravatar</a>";
echo "<img src='$gravatar'>";
echo "<br>";
EOF

echo $somecode | boris.phar | bcat --ascii
```
