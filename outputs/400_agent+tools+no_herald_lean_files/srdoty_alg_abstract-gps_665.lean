import Mathlib

/--
Equivalence between `IsField R` and the usual algebraic formulation: R is nontrivial
and every nonzero element is a unit. This captures the idea that (R,+) is an
abelian group, (R \ {0}, *) is a multiplicative group, 1 ≠ 0, and distributivity
holds (these are recorded in the semiring/ring typeclasses).
-/
theorem is_field_iff_nonzero_units {R : Type*} [Semiring R] :
  IsField R ↔ (Nontrivial R ∧ ∀ a : R, a ≠ 0 → IsUnit a) := by
  sorry
