# 24CS2016 – Building Applications using Flutter

**Ex. No. 5 — Application State Management**
Reg No: URK23CS5015

## Aim

Develop a Personal Budget Calculator that accepts user income and expenses, calculates the remaining balance, and displays the financial status using Flutter state management techniques.

## Description

Every Flutter widget that needs to remember and react to changing data over time is backed by some form of state management. The simplest and most fundamental technique is the built-in StatefulWidget together with its setState() method: whenever setState() is called inside a State object, Flutter marks that widget dirty and rebuilds it (and its descendants) with the new values on the next frame. For a single self-contained screen like a budget calculator, where the state (income, expenses and the computed result) is only ever read and written within that one screen, setState is the appropriate and idiomatic technique — reaching for an external package such as Provider, Riverpod or Bloc would add indirection without any real benefit, since there is no state to share across distant widgets or screens.

This experiment implements a Personal Budget Calculator. A Form containing two TextFormFields (Monthly Income and Total Expenses) uses a validator function to reject empty, non-numeric or negative input. A BudgetResult model wraps the two numbers and exposes a computed balance (income - expenses) and an isSurplus flag. Pressing the Calculate button validates the form and calls setState to store a new BudgetResult, which rebuilds the screen and reveals a BudgetStatusCard: a green card with an upward trend icon when the balance is zero or positive ('You're in surplus'), or a red card with a downward trend icon when it is negative ('You're in deficit'), along with the income, expenses and remaining balance.

## Run it

```bash
cd code
flutter pub get
flutter run -d chrome   # or an Android device/emulator
```

## Contents

- `code/` — Flutter project source
- `screenshots/` — real output screenshots
- `record_spec.json` / `record.pdf` — lab record document (see `scripts/gen_record.py` to regenerate)
