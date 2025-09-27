import Mathlib

/-- Open mapping theorem for holomorphic functions: if U ⊂ ℂ is open and f : ℂ → ℂ is
analytic on U and nonconstant on U (there exist two points in U with different images),
then the restriction of f to U is an open map. -/
theorem open_mapping_theorem_complex {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
    (hf : AnalyticOn ℂ f U) (hnonconst : ∃ z1 z2, z1 ∈ U ∧ z2 ∈ U ∧ f z1 ≠ f z2) :
    IsOpenMap (fun z : Subtype U => f z) := by sorry
