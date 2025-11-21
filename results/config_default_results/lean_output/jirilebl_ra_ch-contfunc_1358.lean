import Mathlib

/-- Suppose S ⊂ ℝ, c is a cluster point of S, f : S → ℝ and a ∈ ℝ, and f(x) → L as x → c.
    Then a * f(x) → a * L as x → c. -/
theorem tendsto_const_mul_on {S : Set ℝ} {c L a : ℝ} (f : ℝ → ℝ) (hf : Filter.Tendsto f (nhdsWithin c S) (nhds L)) :
  Filter.Tendsto (fun x => a * f x) (nhdsWithin c S) (nhds (a * L)) := by sorry
