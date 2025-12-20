#let zuoye(
  title: "标题",
  subtitle: "副标题",
  student: (name: "姓名", id: "学号"),
  body,
) = {
  set document(
    author: student.name,
    title: title,
  )

  set par(justify: true)

  set text(
    font: (
      (name: "Libertinus Serif", covers: "latin-in-cjk"),
      (name: "Noto Serif CJK SC"),
    ),
    lang: "zh",
    size: 12pt,
  )

  show heading: set block(above: 1.6em, below: 0.8em)

  show link: set text(fill: blue)

  show raw: set text(font: "Maple Mono NFMono")
  show raw.where(block: true): it => block(fill: luma(90%), inset: 1em, radius: 0.2em, width: 100%, it)
  show raw.where(block: false): it => box(fill: luma(90%), inset: (x: 0.2em), outset: (y: 0.2em), radius: 0.2em, it)

  page({
    set align(center + horizon)

    text(size: 3em, weight: "bold", title)

    v(0em)

    text(size: 2em, weight: "bold", subtitle)

    v(9em)

    text(size: 1.5em, student.name)

    v(0em)

    text(size: 1.5em, student.id)
  })

  body
}

#let solution(body) = block(inset: 0.5em, width: 100%)[
  *_解．_* #body
]
