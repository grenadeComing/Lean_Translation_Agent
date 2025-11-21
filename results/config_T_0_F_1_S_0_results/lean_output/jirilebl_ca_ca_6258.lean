import Mathlib

/-!
If U ⊆ ℂ is open and connected, f : U → ℂ is holomorphic and nonconstant, and p ∈ U,
then there exists δ > 0 such that the function f restricted to Δ_δ(p) \ {p} is an open map.

We encode holomorphic by `DifferentiableOn ℂ f U` and nonconstancy by existence of two
points in U with different images.
-/

theorem jirilebl_ca_ca_6258 (U : Set Complex) (hUopen : IsOpen U) (hUconn : IsConnected U)
  (f : Complex → Complex) (hdiff : DifferentiableOn ℂ f U)
  (hnonconst : ∃ x y, x ∈ U ∧ y ∈ U ∧ f x ≠ f y) (p : Complex) (hp : p ∈ U) :
  ∃ δ : ℝ, δ > 0 ∧ IsOpenMap (fun x : {x : Complex // x ∈ Metric.ball p δ \ {p}} => f x) := by
  sorry