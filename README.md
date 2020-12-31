# Amortization Calculator

> Amortization Calculator
> Loany McLoany Funds is an organization that recently entered the micro-lending space. As a first step
> towards automation, they have called upon you, their expert programmer, to build an amortization

---

## Problem Description

---

calculator that will help them see the amortization tables given a requested loan amount, interest rate,
term (duration in months) and a request date. Here are some guidelines they have put down:

- Interest is compounded daily.
- The interest amount that accumulates in a particular month is included in the monthly payment
  for that month.
- All monthly payments will be of the same amount.
- All loans are issued on the first of the next month from the requested date.
- Consider a year has 12 months of exactly 30 days each.

The task is to build a system to output a regular schedule that always starts on the first of the
month, displaying:

- the beginning balance at the start of the month
- the principal component of the monthly payment
- the interest component of the monthly payment
- the ending balance assuming the correct payment is made
- the monthly payment itself

---

## Built With

- Ruby

## Getting Started

To get a local copy up and running follow these simple example steps.

```bash
git clode git@github.com:shshamim63/amortization_calculator.git
cd amortization_calculator
```

### Prerequisites

Should have ruby installed

### Setup

```
bundle install
```

### Usage

```
ruby bin/main.rb
```
## Authors

👤 **Author1**

- GitHub: [@shshamim63](https://github.com/shshamim63)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/shakhawathossainshamim/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](lic.url) licensed.
