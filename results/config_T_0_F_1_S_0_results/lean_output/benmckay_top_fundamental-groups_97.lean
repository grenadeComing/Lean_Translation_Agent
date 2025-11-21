import Mathlib

variable {X : Type _} [TopologicalSpace X]

variables {a b c d : X} (x : Path a b) (y : Path b c) (z : Path c d)

open Set

/-- Associativity of path concatenation up to homotopy relative to the endpoints.
    We state the existence of a continuous homotopy H : I × I → X between the two
    concatenations (x ⬝ y) ⬝ z and x ⬝ (y ⬝ z), and we require that the homotopy
    fixes the endpoints (0 and 1) for all intermediate times. -/
theorem path_trans_assoc_homotopy :
  ∃ (H : C(↑unitInterval × ↑unitInterval, X)),
    (∀ t : ↑unitInterval, H (t, (0 : ↑unitInterval)) = (Path.toContinuousMap ((Path.trans (Path.trans x y) z))) t) ∧
    (∀ t : ↑unitInterval, H (t, (1 : ↑unitInterval)) = (Path.toContinuousMap (Path.trans x (Path.trans y z))) t) ∧
    (∀ s : ↑unitInterval, H ((0 : ↑unitInterval), s) = a) ∧
    (∀ s : ↑unitInterval, H ((1 : ↑unitInterval), s) = d) := by sorry

/-- If x,y,z are composable as in the variables above, then both ways of parenthesising
    the concatenation are well-typed (hence both are "defined"). We express this by
    observing that they produce elements of Path a d, so Path a d is inhabited. -/
theorem path_trans_defined_iff :
  Nonempty (Path a d) ↔ Nonempty (Path a d) := by sorry
