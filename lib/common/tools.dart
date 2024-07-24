enum ScreenSize { small, medium, large }

const _breakpoint1 = 600.0;
const _breakpoint2 = 840.0;

ScreenSize getScreenSize(double width) {
  if (width < _breakpoint1) {
    return ScreenSize.small;
  } else if (width >= _breakpoint1 && width <= _breakpoint2) {
    return ScreenSize.medium;
  } else {
    return ScreenSize.large;
  }
}
