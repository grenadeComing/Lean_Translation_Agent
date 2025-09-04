import Mathlib

open Set Metric

/-- If U ⊂ ℂ is open and connected, f : U → ℂ is holomorphic (differentiable on U) and nonconstant,
and p ∈ U, then there exists δ > 0 such that the function f restricted to Δ_δ(p) \ { p } is an open map. -/
theorem exists_delta_open_on_punctured_ball {U : Set ℂ} (hU : IsOpen U) (hUconn : IsConnected U)
  {f : ℂ → ℂ} (hd : DifferentiableOn ℂ f U) (h_nonconst : ∃ x y, x ∈ U ∧ y ∈ U ∧ f x ≠ f y)
  (p : ℂ) (hp : p ∈ U) : ∃ δ > 0, IsOpenMap (fun z : {z : ℂ // z ∈ ball p δ \ {p}} => f z.val) := by sorry
