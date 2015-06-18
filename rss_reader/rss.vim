let result = webapi#feed#parseURL("http://ie.u-ryukyu.ac.jp/news-ie/feed/")

let max = 10
let index = 0
while index < max
    echo "[" . index . "]" . " " . result[index].title
    let index = index + 1
endwhile

let line = "見たい記事を選んでください => "
let choice = input(line)
echo "\n"
echo system("open " . result[choice].link)
