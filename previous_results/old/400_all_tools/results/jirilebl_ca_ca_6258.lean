import Mathlib

open Set Metric

variable {U : Set Complex} {f : Complex → Complex} {p : Complex}

/-- Let U ⊆ ℂ be open and connected, f : U → ℂ be holomorphic and nonconstant, and p ∈ U.
    Then there exists δ > 0 such that the restriction of f to the punctured disc Δ_δ(p) \ {p}
    is an open map in the sense that the image of any open subset of that punctured disc is open. -/
lemma holomorphic_nonconstant_locally_open_at_point
  (hU : IsOpen U) (hconn : IsConnected U) (hf : DifferentiableOn ℂ f U)
  (h_nonconst : ∃ x y, x ∈ U ∧ y ∈ U ∧ f x ≠ f y) (hp : p ∈ U) :
  ∃ δ > 0, ∀ (s : Set Complex), IsOpen s → s ⊆ (Metric.ball p δ \ {p}) → IsOpen (f '' s) := by sorry
