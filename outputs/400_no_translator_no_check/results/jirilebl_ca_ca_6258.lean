import Mathlib

open Set Metric

/-- If U ⊂ ℂ is open and connected, f : U → ℂ is holomorphic and nonconstant,
    and p ∈ U, then there exists δ > 0 such that the function f restricted to
    Δ_δ(p) \ {p} is an open map. -/
theorem exists_delta_open_on_punctured (U : Set ℂ) (hU : IsOpen U) (hconn : IsConnected U)
  (f : ℂ → ℂ) (hdiff : DifferentiableOn ℂ f U) (p : ℂ) (hp : p ∈ U)
  (hnonconst : ∃ z ∈ U, f z ≠ f p) : ∃ δ : ℝ, 0 < δ ∧
  IsOpenMap (fun z : {z : ℂ // z ∈ (Metric.ball p δ \ {p})} => f (z : ℂ)) := by
  sorry
