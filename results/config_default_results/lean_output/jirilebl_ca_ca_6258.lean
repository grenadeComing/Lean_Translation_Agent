import Mathlib
open Set Metric
open scoped Topology

/-- If U ⊂ ℂ is open and connected, f : ℂ → ℂ is differentiable on U (holomorphic) and nonconstant, and p ∈ U, then there exists δ > 0 such that the restriction of f to the punctured disk Δ_δ(p) \ {p} is an open map. We express this by: there exists δ > 0 such that for every open set W in ℂ, the image f '' (W ∩ (Metric.ball p δ \ {p})) is open in ℂ. -/
theorem jirilebl_ca_ca_6258 (U : Set ℂ) (hU : IsOpen U) (hUconn : IsConnected U)
  (f : ℂ → ℂ) (hf : DifferentiableOn ℂ f U) (p : ℂ) (hp : p ∈ U)
  (hnonconst : ∃ z ∈ U, f z ≠ f p) :
  ∃ δ > 0, ∀ (W : Set ℂ), IsOpen W → IsOpen (f '' (W ∩ (Metric.ball p δ \ {p}))) := by sorry
