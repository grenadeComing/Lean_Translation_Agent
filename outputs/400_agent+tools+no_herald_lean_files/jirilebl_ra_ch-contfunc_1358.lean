import Mathlib

open Filter

/-!
  Suppose S ⊂ ℝ, c is a cluster point of S, f : S → ℝ and g : S → ℝ are functions,
  and a ∈ ℝ, such that f(x) → L and g(x) → M as x → c. Prove that a f(x) → a L as x → c.

  We state the result using filters: if f tends to L along nhdsWithin c S, then a * f tends to a * L.
-/

theorem tendsto_mul_const_of_tendsto_within {S : Set ℝ} {c L : ℝ} {f : ℝ → ℝ} (a : ℝ)
  (h : Tendsto f (nhdsWithin c S) (nhds L)) :
  Tendsto (fun x => a * f x) (nhdsWithin c S) (nhds (a * L)) := by sorry
