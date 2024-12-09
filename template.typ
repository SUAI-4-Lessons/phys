#let project(
  title: "", 
  authors: (),
  description: "",
  body
) = {
  set document(author: authors, title: title)
  set text(lang: "ru", size: 14pt, )
  set par(justify: true)
  set page(paper: "a4")
  set figure(numbering: "1")

  v(1fr)
  text(title, size: 24pt)
  v(1pt)
  description
  v(1pt)
  text(authors.join(", "), size: 9pt)


  v(1fr)
  pagebreak()
  outline(depth: 2, indent: 5%)
  pagebreak()  

  set page(numbering: "1", number-align: top + right)
  set text(size: 14pt)
  show math.equation: set text(size: 15pt)
  body
}