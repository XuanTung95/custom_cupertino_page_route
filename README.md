A `CupertinoPageRoute` which can disable swipe back gesture.

## Usage

```dart
  Navigator.push(
    context,
    CustomCupertinoPageRoute(
      builder: (BuildContext context) {
        return HomePage();
      },
      isPopGestureEnabled: false,
    ),
  );
```