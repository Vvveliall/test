
def calculate(expression):
    a, operator, b = expression.split()
    a, b = int(a), int(b)
    if a < 1 or a > 30 or b < 1 or b > 30:
        raise ValueError("Операнды должны быть в диапазоне от 1 до 30")
    if operator == '+':
        return a + b
    elif operator == '-':
        return a - b
    elif operator == '*':
        return a * b
    elif operator == '/':
        if b == 0:
            raise ValueError("Деление на ноль")
        return a // b
    else:
        raise ValueError("Неподдерживаемая операция")

def main(input_str):
    try:
        result = calculate(input_str)
        return str(result)
    except (ValueError, ZeroDivisionError) as e:
        return str(e)

input_str = input("Введите арифметическое выражение (например, '5 * 3'): ")
print(main(input_str))
