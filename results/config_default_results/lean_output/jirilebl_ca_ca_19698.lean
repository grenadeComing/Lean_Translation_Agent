import Mathlib

/-- Suppose U ⊂ ℂ is open and f,g : U → ℂ are holomorphic. If S ⊂ U has an accumulation point in U and f(z)=g(z) for all z ∈ S, show f ≡ g on U. -/
theorem analytic_on_eq_of_eq_on_set_with_accumulation_point {U : Set ℂ} (hU : IsOpen U)
  {f g : ℂ → ℂ} (hf : AnalyticOn ℂ f U) (hg : AnalyticOn ℂ g U) {S : Set ℂ}
  (hS : S ⊆ U) (hex : ∃ z0 ∈ U, z0 ∈ closure (S \ {z0})) (hfg : ∀ z ∈ S, f z = g z) :
  ∀ z ∈ U, f z = g z := by sorry
