<?php

$ver = 2;
echo "<h1>Hello from presentation.</h1>";
echo sprintf("<h2>This is app version: %s</h2>", $ver);

echo "<br>";
echo "==========================";
echo sprintf("<h3>Running on PHP version: %s</h3>", phpversion());
