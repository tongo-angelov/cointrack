// used in transaction screen
class TransactionValidator {
  static String? validateAmount(String? amount) {
    if (amount == null) return null;
    try {
      double data = double.parse(amount);
      if (data <= 0)
        return 'Amount must be more than 0';
      else
        return null;
    } catch (error) {
      return 'Amount must be a number';
    }
  }

  static String? validatePrice(String? amount) {
    if (amount == null) return null;
    try {
      double data = double.parse(amount);
      if (data <= 0)
        return 'Price must be more than 0';
      else
        return null;
    } catch (error) {
      return 'Price must be a number';
    }
  }
}
