import 'dart:math';

double fixedDouble(double v, int d) {
  num f = pow(10, d);
  return ((v * f).round() / f);
}

double fixedFiat(double f) {
  return fixedDouble(f, 2);
}

double fixedCrypto(double f) {
  return fixedDouble(f, 8);
}
