import Mathlib

open Set Metric

/-
Let U ⊂ ℂ be a domain and f : U → ℂ be holomorphic. Show that f is analytic on U; that is, f has a Taylor series expansion around each point with radius of convergence equal to the distance to the nearest singularity, and the series sums to f.

The following formal statement expresses a weakened version: on an open set U, a complex-differentiable function has, at each point z in U, a formal power series expansion (HasFPowerSeriesAt). We only assert the existence of a nonzero radius.
-/

theorem holomorphic_on_implies_analytic {U : Set ℂ} (hU : IsOpen U) (f : ℂ → ℂ)
  (h : DifferentiableOn ℂ f U) :
  ∀ z ∈ U, ∃ p : FormalMultilinearSeries ℂ ℂ ℂ,
    HasFPowerSeriesAt f p z ∧ p.radius ≠ 0 := by sorry
