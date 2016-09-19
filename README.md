<h1 align="center">FBLiveAPISample for iOS</h1>

<div align="center">
<img src="https://github.com/kciter/FBLiveAPISample-iOS/blob/master/Images/preview3.jpeg?raw=true" width='30%'>
<img src="https://github.com/kciter/FBLiveAPISample-iOS/blob/master/Images/preview2.jpeg?raw=true" width='30%'>
<img src="https://github.com/kciter/FBLiveAPISample-iOS/blob/master/Images/preview1.jpeg?raw=true" width='30%'>
</div>

<div align="center">
<a href="https://travis-ci.org/kciter/FBLiveAPISample-iOS"><img src="https://travis-ci.org/kciter/FBLiveAPISample-iOS.svg?branch=master"></a><br>
</div>

<div align="center">
  Facebook Live API Sample for iOS :tv:<br>
</div>
<div align="center">
  <sub>Created by <a href="https://github.com/kciter">Lee Sun-Hyoup</a>.</sub>
</div>

## Requirements
* Swift 3
* Xcode 8
* Cocoapods 1.0.1

## Dependencies
* VideoCore
* FBSDKShareKit
* FBSDKLoginKit

## How to Run?
1. First, create your Facebook app. [Link](https://developers.facebook.com/)

2. Clone this repository

    ```
    $ git clone https://github.com/kciter/FBLiveAPISample-iOS
    ```
3. Open `FBLiveAPISample.xcworkspace`.

4. Open `Info.plist` as Property List.

5. Put your `FacebookAppId` and `FacebookDisplayName` value.
  <img src='https://github.com/kciter/FBLiveAPISample-iOS/blob/master/Images/info.png?raw=true'>

6. [Here](https://developers.facebook.com/docs/videos/live-video) for more Facebook Live API Information.
  
## How see the comments and reactions?
Graph API can make 200 calls per hour per user in aggregate. So I recommend setup your web server, then receiving API updates via facebook webhooks. And send data to client via websocket.

> You can read live video comments by polling the [Video Comment edge](https://developers.facebook.com/docs/graph-api/reference/video/comments/). In order to do this in the most efficient way so as not to exceed Graph API [rate limits](https://developers.facebook.com/docs/graph-api/advanced/rate-limiting), we recommend receiving API updates via webhooks. You can also read live video reactions by polling the [Reactions edge](https://developers.facebook.com/docs/graph-api/reference/live-video/reactions/).

[Here](https://developers.facebook.com/docs/videos/live-video/production-broadcasts#comments) for more information.

## License
The MIT License (MIT)

Copyright (c) 2015 Lee Sun-Hyoup

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
