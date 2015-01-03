Xojo-iOSLib
===========

A library extending Xojo's iOS feature by adding extension modules and classes.
While the classes are not fully independent, they are to a high degree, meaning you can cut this lib to a few items if your project does not need all the added classes. 
To the outside, the classes are usually communicating via Xojo native data types and modules, which should make it easy to adapt this lib to newly added Xojo features. The data type and objects conversions are included too.
Basic functionality is mostly added via modules, so you can have NSObject & UIVIew features in every Xojo control that inherits from iOSControl.
Please check the demo app for the main features and the documentation inside for the various classes and modules.

Currently included modules:
- iOSControl module: UIVIew and NSObject features for every control, including old style animations.
- iOSView module: Animated transitions for views.
- iOSImageView module: Highlighted images and GIS-like animations for iOSView
- iOSTextField extension: more features for your iOSTextfields.
- Conversion modules

Currently included classes:
- UIVIew: Block animations & events for iOSViews
- NSNotification & NSNotificationCenter: Catch appwide NSEvents or attach a specialized NotificationCenter to a Control for easy event handling.
- UITextField: An iOSTextField subclass adding TextEditBegin & TextEditEnded events

Feel free to use, change or add more objects. Check forum.xojo.com for a lot more Xojo iOS extensions.
I am sorry the project is binary format currently. Will be changed as soon as possible.
