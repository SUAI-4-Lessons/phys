#import "@preview/solving-physics:0.1.0": *

#let appendix(body) = {
  show heading.where(level: 1):set heading(numbering: "ПРИЛОЖЕНИЕ A.", supplement: [Приложение])
  counter(heading).update(0)
  body
}

#show: appendix

= Решение теста

Для подготовки теста по физике решено было выделить типовые задачи и примеры их
решения.

== Задача с поездом (частота звука)

Для решения задачи с частотой скорости звука достаточно помнить одну простую
формулу:

$
  nu' = nu frac(v plus.minus v_("пр"), v minus.plus v_("ист"))
$

где:

- $nu'$ -- итоговая частота звука;
- $nu$ -- изначальная частота звука из источника;
- $v$ -- скорость звука;
- $v_"пр"$ -- скорость приёмника
- $v_"ист"$ -- скорость источника

А как понять когда плюс или минус в формуле:

- если идёт *приближение*, то *верхний* знак
- если идёт *отдаление*, то *нижний* знак

#line(length: 100%, stroke: 0.5pt)

Бывают задачи чуть сложнее, а именно вопрос про длину звуковой волны.

Для простоты предлагаю использовать следующую формулу:

$
  lambda' = frac(v, nu')
$

Тогда высчитав частоту, мы можем узнать и длину волны.

=== Примеры

==== Задача 1 <task_1_1>

Локомотив движется со скоростью 50 м/с и издает сигнал на частоте 1000 Гц. Какую
частоту сигнала слышит человек при удалении локомотива? Скорость звука принять
равной 340 м/с.

Решение:

#task(given: [
  $nu = 1000 $ Гц \
  $v = 340 м/с$ \
  $v_"ист" = 50$
], find: [
  $nu'$ --- ?
])[

  $
    nu' = nu frac(v plus.minus v_("пр"), v minus.plus v_("ист"))
  $

  Так как источник у нас удаляется, то получаем следующее:

  $
    nu' = 1000 frac(340, 340 + 50) = 1000 dot 340/390 approx 872 "Гц"
  $

  Ответ: *872 Гц*]

==== Задача 2

При приближении приемника звука к неподвижному источнику, частота принимаемого
звука:

1. уменьшится
2. увеличится
3. постоянна

Решение:

Давайте просто запишем формулу с подставленными значениями:

$
  nu' = nu frac(v + v_"пр", v)
$

По этой формуле думаю очевидно что частота принимаемого звука *увеличится*.

==== Задача 3

При движении источника звука от неподвижного приемника, длина волны принимаемого
звука:

1. увеличивается
2. уменьшается
3. постоянна

Решение:

Давайте просто запишем формулу частоты с подставленными значениями:

$
  nu' = nu frac(v, v + v_"ист")
$

По этой формуле думаю очевидно что частота принимаемого звука уменьшается. Для
вычисления изменения длины волны подставим в формулу длины волны:

$
  lambda = v / nu'
$

Так как скорость звука в среде константа, тогда логично предположить, что длина
волны будет *увеличиваться*, так как деление на уменьшающее значение будет
увеличивать частное.

==== Задача 5

Аналогична #underline(link(<task_1_1>, [задаче 1])).

Локомотив движется со скоростью 50 м/с и издает сигнал на частоте 1000 Гц. Какую
частоту сигнала слышит человек при приближении локомотива? Скорость звука
принять равной 340 м/с.

Решение:

#task(given: [
  $nu = 1000 $ Гц \
  $v = 340 м/с$ \
  $v_"ист" = 50$
], find: [
  $nu'$ --- ?
])[

  $
    nu' = nu frac(v plus.minus v_("пр"), v minus.plus v_("ист"))
  $

  Так как источник у нас приближается, то получаем следующее:

  $
    nu' = 1000 frac(340, 340 - 50) = 1000 dot 340/290 approx 1172 "Гц"
  $

  Ответ: *1172 Гц*]

== Сложение взаимно перпендикулярных колебаний

Задачи вида: При сложении колебаний, точка движется...

Как выглядят перпендикулярные колебания:

$
  cases(x = A cos omega t \
  y = B cos (omega t + alpha))
$

где:
- $A$ и $B$ -- амплитуды
- $w$ -- углоая скорость (*равна*)
- $alpha$ -- разность фаз

Для нас самым важным здесь является разность фаз, если она принимает опр.
значения то мы выполняем опр. алгоритм:

- $alpha = (2m + 1)pi / 2$, $m in ..., -2, -1, 0, 1, 2, ...$ <el>

  В данном случае у нас элипс который строится по следующей формуле:

  #columns(
    2,
  )[

    $
      x^2/A^2 + y^2/B^2 = 1
    $

    #colbreak()

    #figure(image("images/1.png"), caption: "Элипс построенный по формуле")
  ]
- $alpha = m pi$, $m in ...,-2, -1, 0, 1, 2, ...$ <line>

  - Если $m$ -- чётная

    #columns(
      2,
    )[

      $
        y = B/A x
      $

      #colbreak()

      #figure(image("images/2.png"), caption: "Прямая построенный по формуле")
    ]
  - Если $m$ -- нечётная
    #columns(
      2,
    )[

      $
        y = -B/A x
      $

      #colbreak()

      #figure(image("images/3.png"), caption: "Прямая построенный по формуле")
    ]

- Общий случай
  #columns(
    2,
  )[
    $
      x^2/A^2 - (2x y)/(A B) cos alpha + y^2/B^2 = sin^2 alpha
    $
    #colbreak()

    #figure(image("images/4.png"), caption: "Прямая построенный по формуле")
  ]

=== Примеры

==== Задача 1

При сложении колебаний x = 5·sin(ωt+π/2) и y = 2·cos(ωt) точка движется...

- По отрезку прямой, проходящему через вторую и четвертую четверти;

- По эллипсу, вытянутому вдоль оси $O y$

- По отрезку прямой, проходящему через первую и третью четверти

- По эллипсу, вытянутому вдоль оси $O x$

#task(given: [
  $x = 5 dot sin (omega t + pi / 2)$\
  $y = 2 dot cos omega t$
],
fig: [
  
  #figure(image("images/5.png", width: 50%), caption: "Деление графика на части") <plot_frac>
],
fig-align: top+center,
find: [Найти фигуру при \ сложении  двух \ колебаний  x и y ]
)[
  В начале необходимо всё привести к cos. Для этого можно вспомнить, что $sin (... + pi/2) = cos(...)$:

  $
  cases(5 * cos omega t \
  2 * cos omega t 
  )
  $

  Разница фаз равна нулю ($alpha = 0$). Тогда выполняется #link(<line>, [условие прямой]). 
  Так как 0 - чётное число, то функция по которой будет двигаться точка будет: 

  $
  y = 2/5x
  $
  
  Тогда *график будет пересекать 3 и 1 четверти*.
]

==== Задача 2

При сложении колебаний x = 0.3·cos(ωt) и y = 1·cos(ωt + pi/2) точка движется...

- По отрезку прямой, проходящему через вторую и четвертую четверти;

- По эллипсу, вытянутому вдоль оси $O y$

- По отрезку прямой, проходящему через первую и третью четверти

- По эллипсу, вытянутому вдоль оси $O x$


#task(given: [
  $x = 0.3 dot cos (omega t )$\
  $y = 1 dot cos (omega t + pi /2)$
],

find: [Найти фигуру при \ сложении  двух \ колебаний  x и y ]
)[
  

  Разница фаз равна нулю $pi / 2$. Тогда выполняется #link(<el>, [условие эллипса]). 
  Функция по которой будет двигаться точка будет: 

  $
  x^2/0.3^2 + y^2/1^2 = 1
  $

  Так как амплитуда $y$ больше, то можно предположить, что *эллипс будет вытянут по оси $O y$*.
  ]