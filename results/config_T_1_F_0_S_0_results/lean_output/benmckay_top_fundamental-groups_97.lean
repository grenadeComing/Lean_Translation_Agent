import Mathlib

/-- Let X be a topological space and let x,y,z : [0,1] → X be paths whose concatenations are defined.
    Prove that (x*y)*z is homotopic relative to {0,1} to x*(y*z), and that (x*y)*z is defined iff x*(y*z) is defined. -/

variable {X : Type*} [TopologicalSpace X]

variable {x0 x1 x2 x3 : X}

variable (x : Path x0 x1) (y : Path x1 x2) (z : Path x2 x3)

/-- Associativity of path concatenation up to homotopy relative to the endpoints. -/
theorem path_concat_assoc_homotopic_rel :
  homotopic_rel ({0,1} : Set _) ((x.trans y).trans z) (x.trans (y.trans z)) := by sorry

/-- The iterated concatenations (x*y)*z and x*(y*z) are either both defined or both undefined. -/
theorem path_concat_assoc_defined_iff :
  ((x.trans y).trans z).is_defined ↔ (x.trans (y.trans z)).is_defined := by sorry