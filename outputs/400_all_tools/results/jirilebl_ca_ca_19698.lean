import Mathlib

open Set

/-- Suppose U ⊂ ℂ is open and f, g : U → ℂ are holomorphic. If S ⊂ U has an accumulation point in U and f(z) = g(z) for all z ∈ S, then f ≡ g on U. -/
theorem analytic_eq_of_agreement_on_set_with_accum {U S : Set Complex} {f g : Complex → Complex}
  (hU : IsOpen U) (hf : AnalyticOn Complex f U) (hg : AnalyticOn Complex g U)
  (hS : S ⊆ U) (ha : ∃ a, a ∈ U ∧ a ∈ closure (S \ {a}))
  (hfg : ∀ z ∈ S, f z = g z) : ∀ z ∈ U, f z = g z := by sorry
