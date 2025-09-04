import Mathlib

/-!
If f : X → Y is a Serre fibration, then the obvious maps
π_n(F,x0) → π_n(X,x0) → π_n(Y,y0)
fit together into a long exact sequence
... → π_n(F,x0) → π_n(X,x0) → π_n(Y,y0) → π_{n-1}(F,x0) → ...

This file gives a formal statement placeholder for that fact.
-/

universe u

variable {X Y : Type u}
variable [TopologicalSpace X] [TopologicalSpace Y]

/-- Placeholder class for a Serre fibration. In a full development this
would express the lifting property with respect to disks. -/
structure SerreFibration (f : X → Y) : Prop :=
(dummy : True)

/-- The fiber of f over a point y0. -/
def fiber (f : X → Y) (y0 : Y) : Type u := { x : X // f x = y0 }

/-- The (pointed) homotopy groups π_n(X,x0). Placeholder. -/
def pi (n : ℕ) (Z : Type u) (z0 : Z) : Type u := Z

/-- Formal statement (placeholder): a Serre fibration induces a long exact
sequence of homotopy groups of the fibre, total space, and base.

We state the existence of the long exact sequence as True; the actual
construction and proof are omitted (``by sorry''). -/
theorem serre_fibration_long_exact_sequence {f : X → Y} (hf : SerreFibration f) (y0 : Y) (x0 : X) :
  True := by sorry
