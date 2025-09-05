import Mathlib

open Set Metric

/-- If U ⊆ ℂ is open and connected, f : U → ℂ is holomorphic and nonconstant, and p ∈ U,
then there exists δ > 0 such that the restriction of f to Δ_δ(p) \ {p} is an open map.
We express the conclusion by saying that for some δ > 0, for every set s open in ℂ
with s ⊆ ball p δ \ {p}, the image f '' s is open in ℂ. -/
theorem holomorphic_nonconstant_locally_open_on_punctured_disk {U : Set ℂ}
  (hU : IsOpen U) (hU_conn : IsConnected U) (f : ℂ → ℂ) (hf : IsHolomorphicOn f U)
  (hf_nonconst : ¬ IsConstantOn f U) (p : ℂ) (hp : p ∈ U) :
  ∃ δ : ℝ, 0 < δ ∧ ∀ s : Set ℂ, IsOpen s → s ⊆ (Metric.ball p δ \ {p}) → IsOpen (f '' s) := by sorry
