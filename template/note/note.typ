#import "@preview/fontawesome:0.1.0": *

#let note(
  title: none,
  doc
) = {
  show heading: it => {
    it 
    h(1em)
    v(-1em)
  }
  set page(
    paper: "a4",
    numbering: "1",
    number-align: right,
    header: "practice makes perfect."
  )
  set par(
    justify: true,
    first-line-indent: 2em,
  )
  set text(
    font: "Source Han Serif SC",
    lang: "zh",
    size: 12pt
  )
  align(center, heading(level: 1, title))
  // contact
  let contact = [
    #fa-envelope() #h(1em) #link("mailto:horaoen@gmail.com") 
    #h(1em) | #h(1em)
    #fa-github() #h(1em) #link("https://github.com/horaoen")
  ]
  align(center, contact)
  doc
}
