Money.default_currency = Money::Currency.new("GBP")
Money.default_formatting_rules = {
  no_cents_if_whole: true,
  rounded_infinite_precision: true,
}
