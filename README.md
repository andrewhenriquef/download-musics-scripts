# Script to download youtube musics for my mom

## Pre-requisits

1. Python
2. Install this library:
https://github.com/yt-dlp/yt-dlp?tab=readme-ov-file#update

## Update the Library
https://github.com/yt-dlp/yt-dlp

```shell
yt-dlp -U
```

## Getting the youtube links

- Open in the browser the url where the youtibe links are available, run the follwing script on the web browser console

```js
// Extract all YouTube links from the page
const youtubeLinks = [...document.querySelectorAll('a[href]')]
  .map(link => link.href) // Get the href attributes
  .filter(href => href.includes('youtu.be') || href.includes('youtube.com')); // Filter YouTube links

console.log(youtubeLinks);
```

## Downloading the musics

- Now, paste the musics into download_musics bash script on the "urls" array
- Change the "output" folders to the correct folder
- Give to the file the permissions to execute
- Them, just execute the script

```shell
sudo chmod +x download_musics.sh
./download_musics.sh
```



