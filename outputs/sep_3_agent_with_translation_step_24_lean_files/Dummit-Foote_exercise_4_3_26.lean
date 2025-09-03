import Mathlib

/-- Let G be a transitive permutation group on the finite set A with |A| > 1.
    Then there is some σ ∈ G with no fixed points (a derangement). -/
theorem Dummit_Foote_exercise_4_3_26 {A : Type _} [Fintype A] (G : Subgroup (Equiv.Perm A))
  (h_trans : ∀ a b : A, ∃ g : G, (g : Equiv.Perm A) a = b) (h_card : Fintype.card A > 1) :
  ∃ σ : G, ∀ a : A, (σ : Equiv.Perm A) a ≠ a := by sorry
