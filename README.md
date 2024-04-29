## The GetIt package provides a convenient way to access app services and state management classes from anywhere within your app.


#### In Flutter, "get it" refers to a way of accessing and using objects or services that are registered or available throughout the app. Think of it like this: Imagine you have a box where you keep all the tools you need to build something. "Get it" is like reaching into that box to grab whatever tool you need at the moment. In Flutter, this tool could be anything from data storage to user authentication services. It makes it easier to access these tools wherever you need them in your app without having to recreate them each time.


* Note :>  Dependency Injection :> is a programming technique that makes it easy to manage and share resources between different components of your Application.

* Why Used?

#### Get-it not update your UI its just a help you to connect your Business logic with your UI.


#### Get it is not a state management but its belong to service locator design pattern.




* The Best example is of using GetIt package is that if you are using Dio package for Api's and you don't want to depend on that package. Maybe later on its closed the support of  dio. so what you do? you Register instance of dio with GetIt if later on its closed then you simply shift it to http you don't need to change all the code. Just add http packageand write the same fetchData function using http and That's it. This is very common used examplethroughout the application building process. 


