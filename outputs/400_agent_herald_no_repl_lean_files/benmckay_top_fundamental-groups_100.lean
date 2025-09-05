import Mathlib

variable {X : Type*} [TopologicalSpace X]

/-- Let X be a topological space and let x : I → X be a path. Let `x.reverse` denote the reverse
path `x.reverse t = x (1 - t)`. Then `x.append x.reverse` is homotopic rel {0,1} to the constant
loop at `x.source`. -/
theorem path_append_reverse_homotopic_const (x : Path X) :
  Path.homotopic_rel {0,1} (x.append x.reverse) (Path.const X x.source) := by sorry
