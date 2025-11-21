import Mathlib

/-- If f : X → Y is a Serre fibration, then for any basepoint y0 : Y and any x0 in the fibre F := {x : X // f x = y0}
    the obvious maps on homotopy groups fit into a long exact sequence
    ... → π_n(F,x0) → π_n(X,x0) → π_n(Y,y0) → π_{n-1}(F,x0) → ... . -/
theorem serre_fibration_long_exact_sequence {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf : IsSerreFibration f) (y0 : Y) (x0 : {x : X // f x = y0}) :
  LongExactSequence
    (fun n => π n ({x : X // f x = y0}) x0)
    (fun n => π n X (x0 : X))
    (fun n => π n Y y0) := by sorry
