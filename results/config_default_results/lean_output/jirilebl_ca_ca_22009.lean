import Mathlib

/-- Let U ⊂ ℂ be open and f : U → ℂ be holomorphic and nonconstant. Then f is an open mapping. -/
theorem open_mapping_of_holomorphic_nonconstant {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (hnonconst : ∃ z1 z2, z1 ∈ U ∧ z2 ∈ U ∧ f z1 ≠ f z2) :
  ∀ V : Set ℂ, IsOpen V → V ⊆ U → IsOpen (f '' V) := by sorry
