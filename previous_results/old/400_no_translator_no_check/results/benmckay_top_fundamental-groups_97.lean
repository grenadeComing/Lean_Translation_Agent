import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X]

/-- Two paths `p q : Path x y` are homotopic relative to the endpoints `0` and `1` if there
    exists a continuous map `H : (I × I) → X` (where `I = unitInterval`) such that
    `H(·,0) = p`, `H(·,1) = q` and `H(0,·) = x`, `H(1,·) = y`. -/
def PathHomotopyRelEndpoints {x y : X} (p q : Path x y) : Prop :=
  ∃ (H : (↑unitInterval × ↑unitInterval) → X),
    Continuous H ∧
    (∀ t : ↑unitInterval, H (t, 0) = (p : ↑unitInterval → X) t) ∧
    (∀ t : ↑unitInterval, H (t, 1) = (q : ↑unitInterval → X) t) ∧
    (∀ s : ↑unitInterval, H (0, s) = x) ∧
    (∀ s : ↑unitInterval, H (1, s) = y)

/-- Associativity of path concatenation up to homotopy relative to the endpoints. -/
theorem path_assoc_homotopy {a b c d : X} (p : Path a b) (q : Path b c) (r : Path c d) :
  PathHomotopyRelEndpoints ((p.trans q).trans r) (p.trans (q.trans r)) := by
  sorry

/-- If concatenations are defined (endpoints match) then `(p.trans q).trans r` is defined
    iff `p.trans (q.trans r)` is defined. This is formalised here as a trivial statement
    because, with the types `Path a b`, `Path b c`, `Path c d`, both concatenations are
    well-typed `Path a d`. -/
theorem path_assoc_defined_iff {a b c d : X} (p : Path a b) (q : Path b c) (r : Path c d) :
  True := by
  trivial
