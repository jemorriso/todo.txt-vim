import argparse
import re
from datetime import datetime, timedelta


def increment_date(line):
    due_match = re.search(r"due:(\d{4}-\d{2}-\d{2})", line)
    rec_match = re.search(r"rec:(\d+[dwmy])", line)

    if due_match and rec_match:
        due_date = datetime.strptime(due_match.group(1), "%Y-%m-%d")
        rec = rec_match.group(1)
        rec_value = int(rec[:-1])
        rec_unit = rec[-1]

        new_due_date = due_date
        if rec_unit == "d":
            new_due_date = due_date + timedelta(days=rec_value)
        elif rec_unit == "w":
            new_due_date = due_date + timedelta(weeks=rec_value)
        elif rec_unit == "m":
            new_due_date = due_date + timedelta(days=rec_value * 30)
        elif rec_unit == "y":
            new_due_date = due_date + timedelta(days=rec_value * 365)

        new_due_date_str = new_due_date.strftime("%Y-%m-%d")

        # Replace the old due date with the new one in the line
        new_line = re.sub(r"due:\d{4}-\d{2}-\d{2}", "due:" + new_due_date_str, line)

        return new_line

    return line


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("line", help="The line from the todo.txt file")
    args = parser.parse_args()

    print(increment_date(args.line))
