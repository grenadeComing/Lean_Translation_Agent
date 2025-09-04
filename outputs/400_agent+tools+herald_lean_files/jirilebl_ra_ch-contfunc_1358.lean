import Mathlib

open Filter

/-- Suppose S ⊂ ℝ, c is a cluster point of S, f : S → ℝ and g : S → ℝ are functions, and a ∈ ℝ,
    such that f(x) → L and g(x) → M as x → c. Then a * f(x) → a * L as x → c. -/
theorem jirilebl_tendsto_const_mul {S : Set ℝ} {c L M a : ℝ} {f g : ℝ → ℝ}
  (hc : c ∈ closure (S \ {c})) (hf : Tendsto f (nhdsWithin c S) (nhds L)) (hg : Tendsto g (nhdsWithin c S) (nhds M)) :
  Tendsto (fun x => a * f x) (nhdsWithin c S) (nhds (a * L)) := by sorry
