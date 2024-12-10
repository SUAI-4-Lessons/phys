#let header(content) = {
  align(center, text(weight: "bold")[ #content ])
}

#grid(
  columns: (1fr, 1fr),
  rows: (auto, auto),
  column-gutter: 20pt,
  row-gutter: 10pt,
  [
    #header([Частота звука])
    $
      nu' = nu frac(v plus.minus v_("пр"), v minus.plus v_("ист"))
    $

    - приближение -> верхний знак
    - отдаление -> нижний знак

    #header([Длина звуковой волны])
    $
      lambda' = frac(v, nu')
    $

    #header([Релятивистская механика])
    $
      l'_0 = l / sqrt(1 - v^2/c^2)
    $

    - $l'_0$ -- длина стержня в движимой системе отсчета (где стержень недвижимый)
    - $l$ -- длина стержня в другой системе отсчёта (относительно которой движется
      стержень с опр. скоростью)
    - $v$ -- скорость относительно системы отсчета
    - $c$ -- скорость света

  ],
  [
    #header([Сложение взаимно перп. колебаний])
    $
      cases(x = A cos omega t \
      y = B cos (omega t + alpha))
    $

    - $alpha = (2m + 1)pi / 2$, $m in N$

      #columns(2)[

        $
          x^2/A^2 + y^2/B^2 = 1
        $

        #colbreak()

        #image("images/1.png", width: 70%)
      ]
    - $alpha = m pi$, $m in N$
      - $m$ -- чётная

        #columns(2)[

          $
            y = B/A x
          $

          #colbreak()

          #image("images/2.png", width: 70%)
        ]
      - $m$ -- нечётная
        #columns(2)[

          $
            y = -B/A x
          $

          #colbreak()

          #image("images/3.png", width: 70%)
        ]
    - Общий случай

      $x^2/A^2 - (2x y)/(A B) cos alpha + y^2/B^2 = sin^2 alpha$

  ],
  [
    #header([Сложение скоростей в релятивистской механике])

    $
      v = frac(v_1 + v_2, 1 + frac(v_1 v_2, c^2))
    $
  ],
  [
    #header([Сложение гармонических колебаний])

    $
      A^2 = A_1^2 + A_2^2 + 2 A_1 A_2 cos(alpha)
    $
  ],
  [
    #header([Уравнение плоской волны])

    $
      xi(x, t) = A cos (omega t - k x + phi_0)
    $

    Длина волны:

    $
      lambda = 2pi / k
    $

    Скорость распространения волны:

    $
      v = omega/k
    $

    Амплитуда колебаний скорости частицы

    $
      v_0 = A dot omega
    $
  ],
  [
    #header[Уравнение сферической волны]
    $
      xi(x, t) = A/r_0 cos (omega t - k r + phi_0)
    $
    \
    #header[Уравнение стоячей волны]

    $
      xi(x, t) = 2A cos k x cos omega t
    $
    #header[Масса в релятивистской механика]

    $
      m_"rel" = frac(m, sqrt(1 - v^2/c^2))
    $
  ],
  [
    #header[Нормальное ускорение]
    $
      a_n = v^2/r = omega^2 r
    $
  ],
)