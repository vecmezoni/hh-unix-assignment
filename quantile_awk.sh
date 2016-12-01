#!/bin/sh

[[ $# -ne 1 ]] && echo 'Usage: "./quantile_awk.sh <filename>"' && exit 1
[[ ! -f $1 ]] && echo "File '$1' not found" && exit 1

cd "$( dirname "${BASH_SOURCE[0]}" )"

p=0.95 # Захардкодил
awk_program='
  function max(a, b) {
    return a > b ? a : b;            # Возвращает максимум из двух чисел
  }
  
  function min(a, b) {
    return a < b ? a : b;            # Возвращает минимум из двух чисел
  }
  
  {arr[NR] = $0}                     # Заполняю массив.
  END {                              # Когда заполнил,
    p = '$p';                        # беру требуемый процент из баша
    p = p*NR + 0.5;                  # Дальнейший алгоритм взял из GNU Octave
    pi = max(min(int(p), NR-1), 1);
    pr = max(min(p-pi, 1), 0);
    print (1-pr)*arr[pi] + pr*arr[pi+1];
  }
  '

# Парсим лог, сортируем вывод и передаём awk
sh ./parse_log.sh $1 | sort -n | awk "$awk_program"
