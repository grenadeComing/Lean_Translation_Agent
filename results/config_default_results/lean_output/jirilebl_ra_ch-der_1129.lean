import Mathlib
open Filter Set

/-- Let f : (a,b) → ℝ be continuous and differentiable on (a,b) \ {c} for some c ∈ (a,b).
    Assume lim_{x→c} g(x) = L where g(x) is the derivative f' for x ≠ c.
    Then f is differentiable at c and f'(c) = L. -/
theorem differentiable_at_of_tendsto_deriv {a b c : ℝ} {f : ℝ → ℝ} {g : ℝ → ℝ} {L : ℝ}
  (hc : c ∈ Ioo a b)
  (hf : ContinuousOn f (Ioo a b))
  (hder : ∀ x, x ∈ Ioo a b \ {c} → HasDerivAt f (g x) x)
  (hlim : Tendsto g (nhdsWithin c (Ioo a b \ {c})) (nhds L)) :
  HasDerivAt f L c := by sorry