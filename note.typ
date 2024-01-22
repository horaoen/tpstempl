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
    size: 12pt
  )
  set enum(numbering: "1.a)", full: true)
  align(center, heading(level: 1, title))
  // contact
  let contact = [
    #fa-envelope() #h(1em) #link("mailto:horaoen@gmail.com") 
    #h(1em) | #h(1em)
    #fa-github() #h(1em) #link("https://github.com/horaoen")
  ]
    // Display inline code in a small box
  // that retains the correct baseline.
  show raw.where(block: false): box.with(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )

  // Display block code in a larger block
  // with more padding.
  show raw.where(block: true): block.with(
    fill: luma(240),
    inset: 10pt,
    radius: 4pt,
  )

  show raw: it => {
    set text(font: "FiraCode Nerd Font")
    it
  }

  show emph: it => text(font: "Didot", style: "italic", it.body)

  align(center, contact)
  doc
}
