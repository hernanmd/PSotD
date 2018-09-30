| iris |
iris := 'eval' asREval: {RObject findVar: 'iris'}.
'plot' asREval: {
  (iris at: 'Petal.Length').
  (iris at: 'Petal.Width').
  (#pch -> 21).
  (#xlab -> 'length').
  (#ylab -> 'Width').
  (#bg  ->((iris at: 'Species') collect: [ :value | {'red'. 'green3'. 'blue'} at: value ])).
  (#main -> 'Edgar Anderson''s Iris Data')
}.
iris inspect.