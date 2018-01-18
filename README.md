# PhillyBikeDock - revamped with VIPER

<a href="https://publicdomainvectors.org/en/free-clipart/Blue-snake-vector-image/6694.html"><img src="https://i.imgur.com/FQKPyB8.png"></a>

## Introduction
I have already published this app on the iOS app store. Here is <a href="https://itunes.apple.com/us/app/philly-bike-dock/id999216710?mt=8">the link</a>. I based it on the standard MVC pattern. Lately, I have been part of a team that is building an enterprise app for a fortune 200 company. We have been using MVVM with Coordinators and <a href="https://github.com/ReactiveX/RxSwift">RxSwift</a> to build it. We use <a href="https://8thlight.com/blog/uncle-bob/2012/08/13/the-clean-architecture.html">clean architecture</a> to separate concerns into distinct layers that handle data, business logic, and presentation. As an offshoot of this, I have decided to rewrite my Philly Bike Dock app using the basic <a href="https://www.objc.io/issues/13-architecture/viper/">VIPER</a> pattern. VIPER is derived from clean architecture principals and is often used on larger projects to isolate concerns into layers. Doing this helps increase code coverage for testing because it is practical to test the smaller pieces. Among other things, it is also easier for team members to work on smaller classes, models, and controllers without encountering conflicts. 

<i>Note:</i>
I would usually not use VIPER on smaller projects like this but in this case, I wanted to go through the process of migrating an existing project to VIPER.

## Using:
Swift 4<br>
iOS 11

## Viper architecture:
<a href="https://www.objc.io/issues/13-architecture/viper/"><img src="https://cdn-images-1.medium.com/max/800/1*0pN3BNTXfwKbf08lhwutag.png"></a>



Please clone the repo and examine the code. I’m happy to answer questions, and to provide assistance if you are interested in learning more about VIPER.

Special thanks to <a href="https://github.com/pedrohperalta">pedrohperalta</a> whose <a href="https://github.com/pedrohperalta/Articles-iOS-VIPER">Articles</a> project inspired my approach here. Among other things, I really liked (and, consequently, emulated!) the way he organizes folder groups and files in his project. I also discovered <a target="_blank" href="https://github.com/mac-cain13/R.swift">Rswift</a> and <a target="_blank" href="https://github.com/pkluz/PKHUD">PKHUD</a> thanks to his code. On the other hand, I decided to go with Swift 4 codables for json parsing instead of <a target="_blank" href="https://cocoapods.org/pods/ObjectMapper">ObjectMapper</a>, and with Swift 4 being so concise for REST calls, I decided not to bring in Alamofire.
