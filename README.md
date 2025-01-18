## date_format_helper

A Flutter utility package for working with dates and times. It provides an easy way to format, parse, and extract specific date and time details.

---

### Features

- **Date Formatting:**
    - Custom formats (e.g., `dd/MM/yyyy`, `hh:mm a`).
    - Full and short date styles.
    - Timestamp and ISO-8601 formats.
- **Date Parsing:**
    - Convert strings to `DateTime` objects using custom formats.
- **Date Details:**
    - Extract day names, month names, week numbers, quarters, and more.
- **Relative Time:**
    - Get human-readable strings like "2 days ago" or "just now".
- **Leap Year Check:**
    - Verify if a given year is a leap year.

---

### Installation

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  date_format_helper: ^0.0.3
```

Then, run:

```bash
flutter pub get
```

---

### Import

```dart
import 'package:date_format_helper/date_format_helper.dart';
```

---

### Usage

#### Example:

```dart
import 'package:date_format_helper/date_format_helper.dart';

void main() {
  DateTime now = DateTime.now();
  
  print('Date: ${DateFormatHelper.formatDateMonthYear(now)}'); // e.g., 23 Dec 2024
  print('Full Date: ${DateFormatHelper.formatFullDate(now)}'); // e.g., Monday, 23 Dec 2024
  print('Date: ${DateFormatHelper.formatShortMonthYear(now)}'); // e.g., Dec 2024
  print('Date: ${DateFormatHelper.formatFullMonthYear(now)}'); // e.g., December 2024
  print('Date : ${DateFormatHelper.formatDateNMonthYear(now)}'); // e.g., 23rd Dec 2024
  print('Short Date: ${DateFormatHelper.formatShortDate(now)}'); // e.g., 23/12/2024
  print('12-hour Time: ${DateFormatHelper.formatTime12Hour(now)}'); // e.g., 10:30 PM
  print('24-hour Time: ${DateFormatHelper.formatTime24Hour(now)}'); // e.g., 22:30
  print('ISO-8601: ${DateFormatHelper.formatISO(now)}'); // e.g., 2024-12-23T22:30:00.000
  print('Relative Time: ${DateFormatHelper.formatRelative(now.subtract(Duration(days: 2)))}'); // e.g., 2 days ago
  print('Day Name: ${DateFormatHelper.getDayName(now)}'); // e.g., Monday
  print('Month Name: ${DateFormatHelper.getMonthName(now)}'); // e.g., December
  print('Year: ${DateFormatHelper.getYear(now)}'); // e.g., 2024
  print('Week Number: ${DateFormatHelper.getWeekNumber(now)}'); // e.g., 52
  print('Quarter: ${DateFormatHelper.getQuarter(now)}'); // e.g., 4
  print('Is Leap Year: ${DateFormatHelper.isLeapYear(now.year)}'); // e.g., true
}
```

---

### Methods

#### Formatting

| Method                    | Description                         | Example Output             |
|---------------------------|-------------------------------------|----------------------------|
| `formatDate`              | Custom date format.                 | `23/12/2024`               |
| `formatDateMonthYear`     | Full date in dd MMM yyyy.           | `23 Dec 2024`              |
| `formatShortMonthYear`    | date in MMM yyyy.                   | `Dec 2024`                 |
| `formatFullMonthYear`     | date in MMMM yyyy.                  | `December 2024`            |
| `formatDateNMonthYear`    | date by like 1st,2nd.               | `23rd Dec 2024`            |
| `formatFullDate`          | Full date in human-readable format. | `Monday, 23 Dec 2024`      |
| `formatShortDate`         | Short date format.                  | `23/12/2024`               |
| `formatTime12Hour`        | Time in 12-hour format.             | `10:30 PM`                 |
| `formatTime24Hour`        | Time in 24-hour format.             | `22:30`                    |
| `formatTimestamp`         | Timestamp format.                   | `2024-12-23 22:30:00`      |
| `formatISO`               | ISO-8601 format.                    | `2024-12-23T22:30:00.000Z` |

#### Parsing

| Method         | Description                       | Example Input           |
|----------------|-----------------------------------|-------------------------|
| `parseDate`    | Converts a string to `DateTime`. | `'23/12/2024'`         |

#### Date Details

| Method                | Description                                    | Example Output |
|-----------------------|------------------------------------------------|----------------|
| `getDayName`          | Full day name.                                 | `Monday`       |
| `getShortDayName`     | Short day name.                                | `Mon`          |
| `getDayNumber`        | Day number in the month.                       | `23`           |
| `getMonthName`        | Full month name.                               | `December`     |
| `getShortMonthName`   | Short month name.                              | `Dec`          |
| `getYear`             | Year as an integer.                           | `2024`         |
| `getWeekNumber`       | Week number of the year.                       | `52`           |
| `getQuarter`          | Quarter of the year.                          | `4`            |
| `isLeapYear`          | Checks if a year is a leap year.               | `true`         |

---

### Contributions

Contributions are welcome! Please fork this repository, create a feature branch, and submit a pull request.

---

### Feedback & Support

For any feedback or support, please file an issue on the [GitHub repository](https://github.com/Dharini17/date_format_helper).

