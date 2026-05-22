# SQL Revision

## JOIN Types
- **INNER JOIN**: — только совпадающие строки.

- **LEFT JOIN**: — все строки из левой таблицы, для правой — NULL, если нет совпадения.

- **RIGHT JOIN**: — то же, но наоборот.

- **CROSS JOIN**: — декартово произведение (каждая с каждой).

## Window Functions

- **ROW_NUMBER() OVER (PARTITION BY колонка ORDER BY колонка)**: — уникальная нумерация.

- **RANK()**: — с пропусками.

- **DENSE_RANK()**: — без пропусков.

- **LAG(колонка, 1)**: — предыдущее значение.

- **LEAD(колонка, 1)**: — следующее значение.

- **SUM() OVER (PARTITION BY ...)**: — нарастающий итог.

## Dates

- **DATEDIFF(date1, date2)**: — разница в днях.

- **DATE_ADD(date, INTERVAL 1 DAY)**: — прибавить день.

- **YEAR(date), MONTH(date)**: — выделить часть даты.

## Strings

- **LIKE 'cancelled%'**: — начинается на cancelled.

- **CONCAT(first, ' ', last)**: — склеить строки.

- **COALESCE(column, 'default')**: — заменить NULL.
