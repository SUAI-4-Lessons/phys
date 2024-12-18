#import "@preview/solving-physics:0.1.0": *

#let appendix(body) = {
  show heading.where(level: 1):set heading(numbering: "ПРИЛОЖЕНИЕ A.", supplement: [Приложение])
  counter(heading).update(0)
  body
}

#let qoute(content) = {
  block(content, inset: 8pt, radius: 12pt, fill: luma(79.61%))
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

      #figure(image("images/2.png"), caption: "Прямая построенная по формуле")
    ]
  - Если $m$ -- нечётная
    #columns(
      2,
    )[

      $
        y = -B/A x
      $

      #colbreak()

      #figure(image("images/3.png"), caption: "Прямая построенная по формуле")
    ]

- Общий случай
  #columns(2)[
    $
      x^2/A^2 - (2x y)/(A B) cos alpha + y^2/B^2 = sin^2 alpha
    $
    #colbreak()

    #figure(image("images/4.png"))
  ]

=== Примеры

==== Задача 1

При сложении колебаний x = 5·sin(ωt+π/2) и y = 2·cos(ωt) точка движется...

- По отрезку прямой, проходящему через вторую и четвертую четверти;

- По эллипсу, вытянутому вдоль оси $O y$

- По отрезку прямой, проходящему через первую и третью четверти

- По эллипсу, вытянутому вдоль оси $O x$

#task(
  given: [
    $x = 5 dot sin (omega t + pi / 2)$\
    $y = 2 dot cos omega t$
  ],
  fig: [

    #figure(image("images/5.png", width: 50%), caption: "Деление графика на части") <plot_frac>
  ],
  fig-align: top + center,
  find: [Найти фигуру при \ сложении двух \ колебаний x и y ],
)[
  В начале необходимо всё привести к cos. Для этого можно вспомнить, что $sin (... + pi/2) = cos(...)$:

  $
    cases(5 * cos omega t \
    2 * cos omega t)
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

#task(
  given: [
    $x = 0.3 dot cos (omega t )$\
    $y = 1 dot cos (omega t + pi /2)$
  ],
  find: [Найти фигуру при \ сложении двух \ колебаний x и y ],
)[

  Разница фаз равна нулю $pi / 2$. Тогда выполняется #link(<el>, [условие эллипса]).
  Функция по которой будет двигаться точка будет:

  $
    x^2/0.3^2 + y^2/1^2 = 1
  $

  Так как амплитуда $y$ больше, то можно предположить, что *эллипс будет вытянут
  по оси $O y$*.]

== Задача про космонавтов (релятивистская механика)

Задачи где фигурируют скорости света, стоит рассматривать с точки зрения
релятивистской механики. Тогда ниже будут перечислены следствия и формулы,
которые необходимы для решения задач такого типа.

- Длина тел в разных инерциальных системах отсчета

  $
    l'_0 = l / sqrt(1 - v^2/c^2)
  $

  где:
  - $l'_0$ -- длина стержня в движимой системе отсчета (где стержень недвижимый)
  - $l$ -- длина стержня в другой системе отсчёта (относительно которой движется
  стержень с опр. скоростью)
  - $v$ -- скорость относительно системы отсчета
  - $c$ -- скорость света

- Сложение скоростей в релятивистской механике

  $
    v = frac(v_1 + v_2, 1 + frac(v_1 v_2, c^2))
  $

- Масса в релятивистской механика

  $
    m_("rel") = frac(m, sqrt(1 - v^2/c^2))
  $

- Энергия в релятивистской механике

  - Энергия покоя:

    $
      E_0 = m c^2
    $

  - Полная энергия:

    $
      E = frac(m c^2, sqrt(1-v^2/c^2))
    $

  - Потенциальная энергия:

    $
      E_к = E - E_0 = m c^2(frac(1, sqrt(1-v^2/c^2)) - 1)
    $

=== Примеры

==== Задача 1

Два космических корабля летят навстречу друг другу со скоростями V = 0,6 C и U =
0,6 C. C какой скоростью сближаются корабли?

#task(
  given: [
    $v_1 = 0.6 c$\
    $v_2 = 0.6 c$
  ],
  find: [$v$ --- ?],
)[
  Воспользуемся формулой для сложения скоростей в релятивистской механике:

  $
    v = frac(v_1 + v_2, 1 + frac(v_1 v_2, c^2))
  $

  Получим:

  $
    v = frac(0.6 c + 0.6 c, 1 + frac(0.36c^2, c^2)) = (1.2c) / 1.36 approx 0.88 c
  $

  Ответ: *$0.88c$*
]

==== Задача 2

Космонавт, летящий в космическом корабле со скоростью V = 0,8 C, держит в руках
линейку длиной 1 м, повернув ее перпендикулярно направлению скорости корабля.
Чему равна длина линейки для другого космонавта на том же корабле?

Решение:

Стоит обратить внимание на фразу "#underline("для другого космонавта на том же корабле")".
Так как они находятся на одном корабле, то скорость перемещения линейки
относительность корабля равна нулю, а значит и длина линейки равна *1 м*.

==== Задача 3

Космонавт, летящий в космическом корабле со скоростью $v = 0.8 c$, держит в
руках линейку длиной 1 м, повернув ее в направлении скорости корабля. Чему равна
длина линейки для неподвижного наблюдателя?

#task(
  given: [
    $v = 0.8c$\
    $l = 1 space м$
  ],
  find: [$l'$ --- ?],
)[
  Воспользуемся формулой для вычисления длины в релятивистской механике. Стоит
  быть внимательным и при необходимости выразить формулу нужной длины, так как $l_0$ --- длина
  в движимой системе отсчета:

  $
    l'_0 = l / sqrt(1 - v^2/c^2)\
    l = l_0 dot sqrt(1 - v^2/c^2)
  $

  Получим:

  $
    l = 1 dot sqrt(1- 0.64 c^2/c^2) = 1 dot sqrt(0.36) = 1 dot 0.6 = 0.6 м
  $

  Ответ: *$0.6м$*
]

==== Задача 4

Отношение массы покоя частицы к релятивистской массе равно $0.6$. Отношение
скорости частицы к скорости света в вакууме равно.

#task(given: [
  $m/m_"rel" = 0.6$

], find: [v/v_c --- ?])[
  $
    m/m_"rel" = m/frac(m, sqrt(1-v^2/c^2)) = sqrt(1-v^2/c^2) = 0.6
  $
  $
    1-v^2/c^2 = 0.36
  $
  $
    v^2/c^2 = 0.64 \
    v/c = 0.8
  $

]

==== Задача 5

Отношение массы покоя частицы к релятивистской массе равно 0.6. Отношение
кинетической энергии частицы к энергии покоя равно:

#task(
  given: [
    $m/m_"rel" = 0.6$

  ],
  find: [$E_к/E_0$ --- ?],
)[
  $
    m/m_"rel" = m/frac(m, sqrt(1-v^2/c^2)) = sqrt(1-v^2/c^2) = 0.6
  $

  Теперь выразим отношение кинетической энергией и энергией покоя:

  $
    E_к/E_0 = frac(m c^2 (frac(1, sqrt(1-v^2/c^2)) - 1), m c^2) = 1/sqrt(1-v^2/c^2) - 1 = 1/0.6 -1 = frac(10 - 6, 6) = 4/6 approx 0.67
  $

  Ответ: *0.67*

]

== Сложение гармонических колебаний

Для сложения гармонических колебаний используется простая формула:

$
  A^2 = A_1^2 + A_2^2 + 2 A_1 A_2 cos(alpha)
$

где:

- $A_1$ и $A_2$ -- амплитуды колебаний
- $alpha$ -- разность колебаний

=== Пример

Складываются гармонические колебания одной частоты, одного направления,
амплитуды колебаний $A_1 = A_2 = A$, разность фаз $180 degree$. Амплитуда
результирующего колебания:

#task(given: [
  $alpha = 180 degree$ \
  $A_1 = A_2 = A$
], find: [$A_"рез"$ --- ?])[
  Воспользуемся формулой:

  $
    A^2 = A_1^2 + A_2^2 + 2 A_1 A_2 cos(alpha)
  $

  Получим:

  $
    A_"рез" = A^2 + A^2 + 2 dot A^2 cos(180 degree) = 2A^2 - 2A^2 = 0
  $

  Ответ: *$0$*
]

== Нахождение скорости или ускорения гармонического маятника

Эта задача следующего вида:

qoute([Маятник совершает гармонические колебания $x(t) = A cos omega t$.
Ускорение маятника в таком случае задается выражением: ])

Самым простым способом будет взятие производной (или двойной для ускорения).

Нахождение скорости:

$
  (A cos omega t)' = -A omega sin omega t = -A omega cos (omega t + pi/2)
$

Нахождение ускорения:

$
  (A omega sin omega t)' = A omega^2 cos omega t
$

== Уравнение какой волны?

Для решения данной задачи достаточно иметь под рукой формулы:

- Уравнение плоской волны

  $
    xi(x, t) = A cos (omega t - k x + phi_0)
  $

  $k$ - волновое число равное $frac(omega, v)$

- Уравнение сферической волны

  $
    xi(x, t) = A/r_0 cos (omega t - k r + phi_0)
  $

- Уравнение стоячей волны

  $
    xi(x, t) = 2A cos k x cos omega t
  $

=== Примеры

==== Задача 1
$
  xi(x, t) = A_0 sin k x cos omega t
$

Единственная волна где есть две тригонометрические функции -- *плоская волна*.
Может привести её к нужному виду:

$
  xi(x, t) = -A_0 cos omega t cos (k x + pi/2)
$

== Уравнение плоской волны

Разберём задачи отдельно по каждому типу волн. Для их решения надо знать
уравнения опр. волны. В данном разделе мы разберём плоскую волну и задачи к ней.

Формула плоской волны:

$
  xi(x, t) = A cos (omega t - k x + phi_0)
$

- $A$ -- амплитуда
- $t$ -- время
- $omega$ -- угловой коэффициент
- $phi_0$ -- начальная фаза колебаний
- $k$ -- волновой коэффициент

Как найти длину волны?

$
  lambda = 2pi / k
$

Как найти скорость распространения волны?

$
  v = omega/k
$

- $T$ -- период

Как найти амплитуду колебаний скорости частиц среды?

$
  v_0 = A dot omega
$

=== Примеры

==== Задача 1

Уравнение плоской звуковой волны имеет вид $xi(x, t) = A cos (omega t - k x) = 60 cos (1000 t - 3.14x)$.
Чему равна длина волны?

#task(given: [
  $A = 60$ \
  $omega = 1000 "рад"/"сек"$\
  $k = 3.14 approx pi м^(-1)$
], find: [$lambda = ?$])[
  $
    lambda = 2pi / k = 2 dot pi/pi = 2 space м
  $
  Ответ: *2 метра*
]

==== Задача 2

Уравнение акустической волны в струне имеет вид $xi(x, t) = A cos (omega t - k x) = 260 cos (4800 t - 1.2x)$.
Чему равна скорость распространения волны равна:

#task(given: [
  $A = 260$ \
  $omega = 4800 "рад"/"сек"$\
  $k = 1.2 м^(-1)$
], find: [$v = ?$])[
  $
    v = omega/k = 4800 / 1.2 = 4000 м/с
  $
  Ответ: *$4000 м/c$*
]

==== Задача 3

Уравнение морской волны имеет вид $xi(x, t) = A cos (omega t - k x) = 2.4 cos (0.45 t - 0.02x)$.
Скорость распространения волны равна:

#task(given: [
  $A = 2.4$ \
  $omega = 0.45 "рад"/"сек"$\
  $k = 0.02 м^(-1)$
], find: [$v = ?$])[
  $
    v = omega/k = 0.45 / 0.02 = #eval("0.45/0.02") м/с
  $
  Ответ: *$#eval("0.45/0.02") м/c$*
]

== Нормальное ускорение мат. точки

Нормальное ускорение мат. точки вычисляется по следующим формулам:

$
  a_n = v^2/r = omega^2 r
$

где:
- $v$ -- скорость
- $r$ -- радиус
- $omega$ -- угловая скорость

Длина окружности:
$
  l = 2 pi R
$

=== Примеры

==== Задача 1

Материальная точка движется по окружности со скоростью V = 3,14 м/c, совершая
один оборот за Т = 10 с. Найти нормальное ускорение точки.

#task(given: [
  $v = 3.14 approx pi м/с $ \
  $T=10$ с \
], find: [$a_n$ --- ?])[
  $
    l = T dot v = 2 pi r \
    r = frac(T dot v, 2 pi) = 10 dot pi / (2 pi r) = 5 space м \
    a_n = v^2/r = pi^2/5 approx 1.98 approx 2 м/c
  $

  Ответ: $2 м/с$

]

== Энергия маятника

Тут сложно, больно и долго, но задание в тренировочном тесте однотипное можно
просто и запомнить. Ниже я хотел привести формулы для решения, но понял что
показал в итоге решение задачи.

Для решения данной задачи понадобятся следующии формулы:

+ Формула полной энергии:

  $
    E = E_"п" + E_"к"
  $
+ Нахождение кинетической энергии маятника:

  + Допустим у нас есть функция описывающая колебания маятника: $x(t) = A cos (omega t)$.

  + Формула кинетической энергии: $E_к = frac(m v^2, 2)$

  + Найдём скорость маятника:

    $
      v =(d (A cos omega t))/(d t) = -A omega sin omega t
    $
  + Подставим:
    $
      E_к =frac(m (-A omega sin omega t)^2, 2)
    $
+ Нахождение потенциальной энергии:
  + Допустим у нас есть функция описывающая колебания маятника: $x(t) = A cos (omega t)$.
  + Формула потенциальной энергии: $E_п = -limits(integral) ^x_0 F d x$
  + Силу же можно рассчитать как $F = m a = m diaer(x)(t)$
  + Рассчитаем вторую производную: $a = (d (-A omega sin omega t))/(d t) = -A omega^2 cos omega t = - omega^2 x$
  + Рассчитаем опр. интеграл:
    $
      E_п = m -limits(integral)^x_0 -omega^2 x d x = (m omega^2 x^2)/2 = frac(m omega^2(A cos omega t)^2, 2)
    $
+ Найдём полную энергию:
  $
    E = frac(m omega^2(A cos omega t)^2, 2) + frac(m (-A omega sin omega t)^2, 2) = frac(m A^2 omega^2 (cos^2 omega t + sin^2 omega t ), 2) = (m A^2omega^2)/2
  $

== Момент инерции

Для расчёта момента инерции необходима формула:

$
  I = sum m_i r_i^2
$

=== Примеры

==== Задача 1

На концах невесомого стержня длиной 2l закреплены две частицы массами m и 2m.
Чему равен момент инерции системы относительно оси, проходящей через середину
стержня?

#task(
  fig: figure(image("images/6.png", width: 40%)),
  fig-align: top + center,
  given: [
    $m_1 = m$

    $m_2 = 2m$

    $r_1,r_2 = l$
  ],
  find: [$I$ --- ?],
)[
  Для того чтобы найти момент инерции, надо просто сложить величины:

  $
    I = m l^2 + 2 m l^2 = 3m l^2
  $

  Ответ: *$3m l^2$*
]

#pagebreak()

#hide(heading([ Формулы для теста ]))

#include "formuls.typ"