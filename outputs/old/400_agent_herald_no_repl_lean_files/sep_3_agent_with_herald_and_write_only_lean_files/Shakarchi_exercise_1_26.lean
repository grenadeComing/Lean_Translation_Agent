import Mathlib
open Set Filter Function
open scoped Topology

/-- Suppose `f` is continuous in a region `Ω`. Prove that any two primitives of `f` (if they exist)
    differ by a constant. -/
theorem primitives_differ_by_constant (f : ℂ → ℂ) (F G : ℂ → ℂ) (Ω : Set ℂ)
  (hcont : ContinuousOn f Ω) (hΩ : IsOpen Ω) (hconn : IsConnected Ω)
  (hF : ∀ z ∈ Ω, HasDerivAt F (f z) z) (hG : ∀ z ∈ Ω, HasDerivAt G (f z) z) :
  ∃ c : ℂ, ∀ z ∈ Ω, F z = G z + c := by sorry
