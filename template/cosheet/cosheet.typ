#let cosheet(
  doc
) = {
  set heading(numbering: "1.")
  set page(
    paper: "a4",
    numbering: "1",
    number-align: right,
  )
  set par(
    justify: true,
  )
  set text(
    font: "Source Han Serif SC",
    lang: "zh",
    size: 12pt
  )
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
  doc
}
