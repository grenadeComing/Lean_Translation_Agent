import Mathlib
open Function Set Filter Metric Complex
open scoped Topology

/-- Suppose U ⊆ ℂ is open, f : U → ℂ is holomorphic, and f'(p) ≠ 0 for some p ∈ U. Then there exist open sets V, W ⊆ ℂ with p ∈ V ⊆ U, f(V) = W, and f|_V is injective with a holomorphic inverse. -/
theorem exists_open_injective_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
    {p : ℂ} (hp : p ∈ U) (h : deriv f p ≠ 0) :
    ∃ V W : Set ℂ,
      IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
      ∃ inv : ℂ → ℂ, DifferentiableOn ℂ inv W ∧ (∀ x ∈ V, inv (f x) = x) ∧ (∀ y ∈ W, f (inv y) = y) := by sorry