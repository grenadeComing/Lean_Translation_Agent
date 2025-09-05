import Mathlib

/-!
Suppose S ⊂ ℝ, c is a cluster point of S, f : S → ℝ and g : S → ℝ are functions, and a ∈ ℝ,
such that f(x) → L and g(x) → M as x → c. Prove that a f(x) → a L as x → c.

We state a version where f is a function ℝ → ℝ and the limit is taken along nhdsWithin c S.
-/

variable {S : Set ℝ} {c a L : ℝ} {f : ℝ → ℝ}

theorem tendsto_mul_const_of_tendsto (hc : IsClusterPt c S)
  (hf : Tendsto f (nhdsWithin c S) (nhds L)) :
  Tendsto (fun x => a * f x) (nhdsWithin c S) (nhds (a * L)) := by sorry
