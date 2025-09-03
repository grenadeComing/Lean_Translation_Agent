import Mathlib

/-!
Exercise: Let A and B be groups. Prove that A × B ≅ B × A.
We state the existence of a multiplicative equivalence (group isomorphism).
-/

noncomputable def prod_comm_group (A B : Type _) [Group A] [Group B] : MulEquiv (A × B) (B × A) := by
  sorry
