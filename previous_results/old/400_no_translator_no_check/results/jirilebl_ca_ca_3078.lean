import Mathlib

/-!
  If f : U → ℂ is holomorphic on a domain U ⊂ ℂ, then f is analytic.
  Here we state a standard version: if f is complex-differentiable on an open
  set U, then f is analytic on U. The proof is omitted (sorry).
-/

theorem complex_differentiable_on_implies_analytic_on {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) :
  AnalyticOn ℂ f U := by
  sorry
