import Mathlib

open Set Metric

/--
If U ⊆ ℂ is open and connected, f : U → ℂ is holomorphic and nonconstant, and p ∈ U,
then there exists δ > 0 such that the restriction of f to the punctured disk
Δ_δ(p) \ {p} is an open map.
-/
theorem jirilebl_ca_ca_6258 {U : Set ℂ} (hU : IsOpen U) (hconn : IsConnected U)
  (f : ℂ → ℂ) (hf : IsHolomorphicOn f U) (p : ℂ) (hp : p ∈ U)
  (h_nonconst : ¬ ∃ c : ℂ, ∀ z ∈ U, f z = c) :
  ∃ δ : ℝ, δ > 0 ∧
    ∀ s : Set ℂ, s ⊆ (Metric.ball p δ \ {p}) → IsOpen s → IsOpen (f '' s) := by sorry
