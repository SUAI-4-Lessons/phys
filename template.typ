#let project(
  title: "", 
  authors: (),
  description: "",
  body
) = {
  set document(author: authors, title: title)
  set text(lang: "ru")
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
  
  body
}