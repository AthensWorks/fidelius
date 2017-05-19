# Fidelius: a Secret Keeper for iOS

### Installation:

To your project's `Podfile`, add:

`pod 'Fidelius'`

then run:

`pod install`

Fidelius has two dependencies, the `ejson` and `plist` gems. To install these gems locally in your user directory, and to create a template `secrets.ejson` file, run:

`./Pods/Fidelius/install`

Finally add a build phase to your project consisting of the following:

"${PODS_ROOT}""/Fidelius/decrypt.rb

*Note: add a screenshot here of build phase window*

### Usage:

Add keys and values as normal to `secrets.json`. Then, **before committing**, run

`ejson encrypt` to encrypt newly added values.
