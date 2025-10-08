import Mathlib

open Set

/-- Exercise: In the finite-complement (cofinite) topology on a set α,
    show that if α is infinite then α is connected.  -/
theorem Munkres_exercise_23_4 {α : Type _} [TopologicalSpace α]
  (h_top : ∀ s : Set α, IsOpen s ↔ s = ∅ ∨ (sᶜ).Finite)
  (hinf : (univ : Set α).Infinite) : ConnectedSpace α := by sorry
