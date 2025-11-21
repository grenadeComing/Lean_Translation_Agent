import Mathlib

open Set

/-- If U ⊂ ℂ is open, f : U → ℂ is holomorphic (differentiable on U), and the complex derivative at p is nonzero,
then there exist neighbourhoods V of p and W of f(p) and a map g which is the local inverse of f between these
neighbourhoods; moreover g is differentiable (holomorphic) on W. -/
theorem exists_local_inverse_of_complex_holomorphic {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) {p : ℂ} (hp : p ∈ U)
  (h : fderiv ℂ f p ≠ (0 : ℂ →L[ℂ] ℂ)) :
  ∃ (V W : Set ℂ) (g : ℂ → ℂ),
    p ∈ V ∧ f p ∈ W ∧ IsOpen V ∧ IsOpen W ∧ V ⊆ U ∧
    (∀ x ∈ V, g (f x) = x) ∧ (∀ y ∈ W, f (g y) = y) ∧ DifferentiableOn ℂ g W := by sorry