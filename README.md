
<h1 align="center">Telegram Media Downloader</h1>

<p align="center">
<a href="https://github.com/Dineshkarthik/telegram_media_downloader/actions"><img alt="Unittest" src="https://github.com/Dineshkarthik/telegram_media_downloader/workflows/Unittest/badge.svg"></a>
<a href="https://codecov.io/gh/Dineshkarthik/telegram_media_downloader"><img alt="Coverage Status" src="https://codecov.io/gh/Dineshkarthik/telegram_media_downloader/branch/master/graph/badge.svg"></a>
<a href="https://github.com/Dineshkarthik/telegram_media_downloader/blob/master/LICENSE"><img alt="License: MIT" src="https://black.readthedocs.io/en/stable/_static/license.svg"></a>
<a href="https://github.com/python/black"><img alt="Code style: black" src="https://img.shields.io/badge/code%20style-black-000000.svg"></a>
</p>

<h3 align="center">
  <a href="https://github.com/Dineshkarthik/telegram_media_downloader/discussions/categories/ideas">Feature request</a>
  <span> · </span>
  <a href="https://github.com/Dineshkarthik/telegram_media_downloader/issues">Report a bug</a>
  <span> · </span>
  Support: <a href="https://github.com/Dineshkarthik/telegram_media_downloader/discussions">Discussions</a>
  <span> & </span>
  <a href="https://t.me/tgmdnews">Telegram Community</a>
</h3>

### Overview:
Download all media files from all conversations or channels that you are a part of from telegram.
A meta of last read/downloaded message is stored in the config file so that in such a way it won't download the same media file again.

### Support:
| Category | Support |
|--|--|
|Language | `Python 3.6 ` and above|
|Download media types|  audio, document, photo, video, video_note, voice|

### Installation

For *nix os distributions with `make` availability
```sh
$ git clone https://github.com/Dineshkarthik/telegram_media_downloader.git
$ cd telegram_media_downloader
$ make install
```
For Windows which doesn't have `make` inbuilt 
```sh
$ git clone https://github.com/Dineshkarthik/telegram_media_downloader.git
$ cd telegram_media_downloader
$ pip3 install -r requirements.txt
```

## Configuration 

All the configurations are  passed to the Telegram Media Downloader via `config.yaml` file.

**Getting your API Keys:**
The very first step requires you to obtain a valid Telegram API key (API id/hash pair):
1.  Visit  [https://my.telegram.org/apps](https://my.telegram.org/apps)  and log in with your Telegram Account.
2.  Fill out the form to register a new Telegram application. 
3.  Done! The API key consists of two parts:  **api_id**  and  **api_hash**.

### config.yaml
```yaml
api_hash: your_api_hash
api_id: your_api_id
phone_number: your_phone_number
last_read_message_id: {}
ids_to_retry: {}
media_types:
- audio
- document
- photo
- video
- voice
file_formats:
  audio:
  - all
  document:
  - pdf
  - epub
  video:
  - mp4
download_directory: optional_directory_path
```

- api_hash  - The api_hash you got from telegram apps
- api_id - The api_id you got from telegram apps
- phone_number - Your phone number you used to login to telegram
- last_read_message_id - If it is the first time you are going to read the channel let it be `0` or if you have already used this script to download media it will have some numbers which are auto-updated after the scripts successful execution. Don't change it.
- ids_to_retry - `Leave it as it is.` This is used by the downloader script to keep track of all skipped downloads so that it can be downloaded during the next execution of the script.
- media_types - Type of media to download, you can update which type of media you want to download it can be one or any of the available types.
- file_formats - File types to download for supported media types which are `audio`, `document` and `video`. Default format is `all`, downloads all files.
- download_directory - Directory to download the media files. Default is the current directory.

### Evniroment Variables

Optional environment variables:

```javascript  for color coding
DOWNLOAD_DIRECTORY=<path_to_download_directory>
API_ID=<api_id>
API_HASH=<api_hash>
PHONE_NUMBER=<phone_number>
```
These override the values in the config file.

## Execution
```sh
$ python3 media_downloader.py
```
All the downloaded media will be stored inside  respective directory named  in the same path as the python script.

| Media type | Download directory |
|--|--|
| audio | path/to/project/audio |
| document | path/to/project/document |
| photo | path/to/project/photo |
| video | path/to/project/video |
| voice | path/to/project/voice |
| voice_note | path/to/project/voice_note |

## Proxy
`Socks5` proxy is supported in this project currently. To use it, simply create a `config.ini` file in the path of this project, and edit it with your proxy server info as follow:

```ini
[proxy]
enabled = True
hostname = 127.0.0.1
port = 1080
username =
password =
```

Then the proxy will automatically be enabled.

## Contributing
### Contributing Guidelines
Read through our [contributing guidelines](https://github.com/Dineshkarthik/telegram_media_downloader/blob/master/CONTRIBUTING.md) to learn about our submission process, coding rules and more.

### Want to Help?
Want to file a bug, contribute some code, or improve documentation? Excellent! Read up on our guidelines for [contributing](https://github.com/Dineshkarthik/telegram_media_downloader/blob/master/CONTRIBUTING.md).

### Code of Conduct
Help us keep Telegram Media Downloader open and inclusive. Please read and follow our [Code of Conduct](https://github.com/Dineshkarthik/telegram_media_downloader/blob/master/CODE_OF_CONDUCT.md).
